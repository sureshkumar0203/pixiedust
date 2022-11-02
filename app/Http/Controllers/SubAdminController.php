<?php

namespace App\Http\Controllers;

use App\SubAdmin;
use App\User;
use Illuminate\Http\Request;
use App\EmailTemplate;

use Hash;


class SubAdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sub_adm_data = User::where('id','!=',1)->get();
        //dd($sub_adm_data);
        return view('admin.sub-admin.index',compact('sub_adm_data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.sub-admin.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $all_input = $request->all();

        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email|unique:users,email', 
            'password' => 'required',
            'contact_no' => 'required',
            'address' => 'required',
        ]);


        $all_input['password'] = Hash::make($request->password);
        $all_input['active'] = 1;
        User::create($all_input);
        //dd($all_input);

        //###################### User Registration mail goes to USER#################
        // Admin Details
        $admin_det = getAdminDetails();
        //dd($admin_det);

        $admin_name = $admin_det->name;
        $admin_email = $admin_det->alt_email;
        
        $current_year = date("Y");
        $subject = "Pixiedust :: Your login credentials";
        
        //Email Template Details
        $res_template = EmailTemplate::where('id', '=', 2)->get();
        $input = $res_template[0]->content;
        
        $user_name = $request->name;
        $user_email = $request->email;
        $user_password = $request->password;

        $body_user = str_replace(array('%USERNAME%','%USEREMAIL%','%USERPASSWORD%','%ADMINNAME%','%ADMINEMAIL%','%CURRENTYEAR%'), array($user_name,$user_email,$user_password,$admin_name,$admin_email, $current_year), $input);
        //echo $body_user;exit;
        
        $headers = "MIME-Version: 1.0\n";
        $headers .= "Content-type: text/html; charset=UTF-8\n";
        $headers .= "From:" . $admin_name . " < " . $admin_email . ">\n";
        //$ok = mail($user_email, $subject, $body_user, $headers);

        return redirect('admin/subadmin/create')->with('success','Subadmin created successfully');
       
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\SubAdmin  $subAdmin
     * @return \Illuminate\Http\Response
     */
    public function show(SubAdmin $subAdmin)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\SubAdmin  $subAdmin
     * @return \Illuminate\Http\Response
     */
    public function edit(SubAdmin $subAdmin,$id)
    {
        $sub_adm_data = User::where('id',$id)->first();
        return view('admin.sub-admin.edit',compact('sub_adm_data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\SubAdmin  $subAdmin
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, SubAdmin $subAdmin,$id)
    {
        $all_input = $request->except('_token','_method');
        //dd($all_input);
        $this->validate($request,[
            'name' => 'required',
            'email' => 'required|email|unique:users,email,'.$id,
            'contact_no' => 'required',
            'address' => 'required'
        ]);
        //echo $id;exit;
        User::where('id',$id)->update($all_input);
        return redirect('admin/subadmin/'.$id."/edit")->with('success','Record updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\SubAdmin  $subAdmin
     * @return \Illuminate\Http\Response
     */
    public function destroy(SubAdmin $subAdmin,$id)
    {   
        User::destroy($id);
        return redirect('admin/subadmin');
    }

    public function block($id) {
        User::where('id',$id)->update(['active' => 0]);
        return redirect('admin/subadmin')->with('success', 'Login blocked  successfully');
    }

    public function active($id) {
     User::where('id',$id)->update(['active' => 1]);
     return redirect('admin/subadmin')->with('success', 'Login activate  successfully');
          
    }

}
