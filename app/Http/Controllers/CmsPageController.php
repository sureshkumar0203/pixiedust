<?php

namespace App\Http\Controllers;

use App\CmsPage;
use Illuminate\Http\Request;
use Image;

class CmsPageController extends Controller {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct() {
        $this->middleware('auth');
    }

    public function index() {
        $getPages = CmsPage::all();
        return view('admin.pages.index', compact('getPages'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\CmsPage  $cmsPage
     * @return \Illuminate\Http\Response
     */
    public function show(CmsPage $cmsPage) {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\CmsPage  $cmsPage
     * @return \Illuminate\Http\Response
     */
    public function edit(CmsPage $cmsPage, $id) {
        $cmsPage = CmsPage::findOrfail($id);
        return view('admin.pages.edit', compact('cmsPage'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\CmsPage  $cmsPage
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, CmsPage $cmsPage, $id) {
        $this->validate($request, [
            'title' => 'required',
            'description' => 'required',
			'image' => 'nullable|mimes:jpeg,bmp,png,jpg',
            'meta_title' => 'required',
            'meta_keywords' => 'required',
            'meta_description' => 'required',
        ]);
        $input = $request->all();
		$cms_data = CmsPage::where('id', $id)->first();
		if ($request->hasFile('image')) {
            if (!empty($cms_data->image)) {
                $oldImage = public_path('images/' . $cms_data->image);
                if (file_exists($oldImage)) {
                    unlink($oldImage);
                }
            }
            $image = $request->file('image');
			$filename = rand(11111, 99999) . '.' . $image->getClientOriginalExtension();
			
            $image_resize = Image::make($image->getRealPath())->resize(400, 400);
            $image_resize->save(public_path('images/' . $filename));
            $input['image'] = $filename;
        } else {
            $input['image'] = $cms_data->image;
        }
		
        $pageUpdate = CmsPage::find($id)->update($input);
        if ($pageUpdate) {
            return redirect('admin/pages')->with('success', 'Page updated successfully');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\CmsPage  $cmsPage
     * @return \Illuminate\Http\Response
     */
    public function destroy(CmsPage $cmsPage) {
        //
    }

}
