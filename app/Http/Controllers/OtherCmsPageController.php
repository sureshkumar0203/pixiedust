<?php

namespace App\Http\Controllers;

use App\OtherCmsPage;
use Illuminate\Http\Request;
use Image;

class OtherCmsPageController extends Controller
{
	public function __construct() {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //$oth_page_info = OtherCmsPage::all()->sortByDesc("id");
		$oth_page_info = OtherCmsPage::orderBy('id', 'DESC')->get();
        return view('admin.other-pages.index', compact('oth_page_info'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.other-pages.create');
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
		    'cms_page' => 'required',
			'title' => 'required',
            'description' => 'required',
			//'img_vid' => 'nullable|image:jpeg,bmp,png,jpg,mp4',
			//'img_vid' => 'nullable|mimes:mp4'
		]);
		
		$count = OtherCmsPage::where('cms_page', $request->cms_page)->where('title', '=', $request->title)->count();
		if ($count > 0) {
            return redirect()->back()->with('error', 'Title already exist for selected page title');
        }
		
		if ($request->hasFile('img_vid')) {
			$ext = strtolower($request->file('img_vid')->getClientOriginalExtension());
			if($ext != "png" && $ext != "jpg" && $ext != "jpeg" && $ext != "mp4" && $ext != 'mov') {
				return redirect('admin/other-pages')->with('error', 'Upload only png,jpg,jpeg,mp4,mov file format');
			}
			$img_vid = $request->file('img_vid');
			
			if($ext == 'mp4' || $ext == 'mov'){
				$filename = rand(11111, 99999) . '.' . $ext;
				$request->file('img_vid')->move(public_path().'/images/img-vid/', $filename);
				$all_input['img_vid'] = $filename;
				
			}else{
				$filename = rand(11111, 99999) . '.' . $ext;
				$image_resize = Image::make($img_vid->getRealPath())->resize(400, 400);
				$image_resize->save(public_path('images/img-vid/' . $filename));
				$all_input['img_vid'] = $filename;
			}
		}
		OtherCmsPage::create($all_input);
		return redirect('admin/other-pages')->with('success', 'added successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\OtherCmsPage  $otherCmsPage
     * @return \Illuminate\Http\Response
     */
    public function show(OtherCmsPage $otherCmsPage)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\OtherCmsPage  $otherCmsPage
     * @return \Illuminate\Http\Response
     */
    public function edit(OtherCmsPage $otherCmsPage,$id)
    {
        $op_info = OtherCmsPage::findOrfail($id);
        return view('admin.other-pages.edit', compact('op_info'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\OtherCmsPage  $otherCmsPage
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, OtherCmsPage $otherCmsPage,$id)
    {
		$input = $request->all();
		
		$this->validate($request, [
		    'cms_page' => 'required',
			'title' => 'required',
            'description' => 'required',
		]);
		
		
		$count = OtherCmsPage::where([['cms_page', $request->cms_page], ['title', $request->title], ['id', '!=', $id]])->count();
		if ($count > 0) {
			return redirect()->back()->with('error', 'Title already exist for selected page title');
		}
				
		
		$cms_data = OtherCmsPage::where('id', $id)->first();
		if ($request->hasFile('img_vid')) {
			$ext = strtolower($request->file('img_vid')->getClientOriginalExtension());
			if($ext != "png" && $ext != "jpg" && $ext != "jpeg" && $ext != "mp4" && $ext != "mov") {
				return redirect('admin/other-pages')->with('error', 'Upload only png,jpg,jpeg,mp4,mov file format');
			}
			
            if (!empty($cms_data->img_vid)) {
                $oldImage = public_path('images/img-vid/' . $cms_data->img_vid);
                if (file_exists($oldImage)) {
                    unlink($oldImage);
                }
            }
			
			$img_vid = $request->file('img_vid');
			if($ext == 'mp4' || $ext == 'mov'){
				$filename = rand(11111, 99999) . '.' . $ext;
				$request->file('img_vid')->move(public_path().'/images/img-vid/', $filename);
				$input['img_vid'] = $filename;
				
			}else{
				$filename = rand(11111, 99999) . '.' . $ext;
				$image_resize = Image::make($img_vid->getRealPath())->resize(400, 400);
				$image_resize->save(public_path('images/img-vid/' . $filename));
				$input['img_vid'] = $filename;
			}
        } else {
            $input['img_vid'] = $cms_data->img_vid;
        }
		//dd($input);
        $pageUpdate = OtherCmsPage::find($id)->update($input);
        if ($pageUpdate) {
            return redirect('admin/other-pages')->with('success', 'Updated successfully');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\OtherCmsPage  $otherCmsPage
     * @return \Illuminate\Http\Response
     */
    public function destroy(OtherCmsPage $otherCmsPage,$id)
    {
        $cms_info = OtherCmsPage::findOrfail($id);
        if (!empty($cms_info->img_vid)) {
            $cms_iv = public_path('images/img-vid/' . $cms_info->img_vid);
            if (file_exists($cms_iv)) {
                unlink($cms_iv);
            }
        }
        OtherCmsPage::destroy($id);
        return redirect()->back()->with('success', 'Record deleted successfully');
    }
}
