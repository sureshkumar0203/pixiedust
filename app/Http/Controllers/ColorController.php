<?php

namespace App\Http\Controllers;

use App\Color;
use Illuminate\Http\Request;

class ColorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $color_data = Color::all()->sortByDesc("id");
        return view('admin.color.index', compact('color_data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.color.create');
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
            'color' => 'required',
            'color_code' => 'required',
        ]);
        
        $count = Color::where('color', $request->color_code)->count();
        if ($count == 0) {
            Color::create($input);
            return redirect('admin/color/create')->with('success', 'Saved successfully.');
        } else {
            return redirect('admin/color/create')->with('error', 'This record exist.');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Color  $color
     * @return \Illuminate\Http\Response
     */
    public function show(Color $color)
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Color  $color
     * @return \Illuminate\Http\Response
     */
    public function edit(Color $color)
    {
        if(Color::find($color)!=null){
            $color_data = Color::where('id', $color->id)->first();
            //dd($color_data);
            return view('admin.color.edit', compact('color_data'));
        }else{
            return redirect('admin/color');
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Color  $color
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Color $color)
    {
        //echo $color_id = $color->id;exit;
        $all_input = $request->all();
        $this->validate($request, [
            'color' => 'required',
            'color_code' => 'required',
        ]);
        
        if(Color::find($color)!=null){
            $count = Color::where('color_code', $request->color_code)->where('id', '!=', $color->id)->count();
            if ($count > 0) {
                return redirect('admin/color/'.$color->id.'/edit')->with('error', 'This record exist.');
            }
            Color::find($color->id)->update($all_input);
            return redirect('admin/color/'.$color->id.'/edit')->with('success', 'Record updated successfully.');
        }else{
            return redirect('admin/color');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Color  $color
     * @return \Illuminate\Http\Response
     */
    public function destroy(Color $color)
    {
        if(Color::find($color)!=null){
            Color::destroy($color->id);
            return redirect('admin/color')->with('success','Record deleted successfully');
        }else{
            return redirect('admin/color');
        }
    }
}
