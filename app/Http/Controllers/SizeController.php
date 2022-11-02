<?php

namespace App\Http\Controllers;

use App\Size;
use Illuminate\Http\Request;

class SizeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $size_data = Size::all()->sortByDesc("id");
        return view('admin.size.index', compact('size_data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.size.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $input = $request->all();
        $this->validate($request, [
            'size' => 'required',
        ]);
        
        $count = Size::where('size', $request->size)->count();
        if ($count == 0) {
            Size::create($input);
            return redirect('admin/size/create')->with('success', 'Saved successfully.');
        } else {
            return redirect('admin/size/create')->with('error', 'This record exist.');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Size  $size
     * @return \Illuminate\Http\Response
     */
    public function show(Size $size)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Size  $size
     * @return \Illuminate\Http\Response
     */
    public function edit(Size $size)
    {
        if(Size::find($size)!=null){
            $size_data = Size::where('id', $size->id)->first();
            //dd($color_data);
            return view('admin.size.edit', compact('size_data'));
        }else{
            return redirect('admin/size');
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Size  $size
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Size $size)
    {
        //echo $color_id = $color->id;exit;
        $all_input = $request->all();
        $this->validate($request, [
            'size' => 'required',
        ]);
        
        if(Size::find($size)!=null){
            $count = Size::where('size', $request->size)->where('id', '!=', $size->id)->count();
            if ($count > 0) {
                return redirect('admin/size/'.$size->id.'/edit')->with('error', 'This record exist.');
            }
            Size::find($size->id)->update($all_input);
            return redirect('admin/size/'.$size->id.'/edit')->with('success', 'Record updated successfully.');
        }else{
            return redirect('admin/size');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Size  $size
     * @return \Illuminate\Http\Response
     */
    public function destroy(Size $size)
    {
        if(Size::find($size)!=null){
            Size::destroy($size->id);
            return redirect('admin/size')->with('success','Record deleted successfully');
        }else{
            return redirect('admin/size');
        }
    }
}
