<?php

namespace App\Http\Controllers;

use App\EventCms;
use Illuminate\Http\Request;
use Image;

class EventCmsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct() {
        $this->middleware('auth');
    }

    public function index()
    {
        $getEventPages = EventCms::all();
        return view('admin.event-pages.index', compact('getEventPages'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.event-pages.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {   
        $allInput = $request->all();
        $this->validate($request, [
            'title' => 'required',
            'description' => 'required',
            'image' => 'nullable|mimes:jpeg,bmp,png',
            'meta_title' => 'required',
            'meta_keywords' => 'required',
            'meta_description' => 'required',
        ]);
        
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $filename = rand(11111, 99999) . $image->getClientOriginalName();
            $image_resize = Image::make($image->getRealPath())->resize(400, 400);
            $image_resize->save(public_path('images/' . $filename));
            $allInput['image'] = $filename;
        }
        $allInput['slug'] = str_slug($request->input('title'));
        EventCms::create($allInput);
        return redirect('admin/event-pages')->with('success', 'Event page Added successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\EventCms  $eventCms
     * @return \Illuminate\Http\Response
     */
    public function show(EventCms $eventCms)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\EventCms  $eventCms
     * @return \Illuminate\Http\Response
     */
    public function edit(EventCms $eventCms,$id)
    {
        $eventCms = EventCms::where('id', $id)->first();
        return view('admin.event-pages.edit', compact('eventCms'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\EventCms  $eventCms
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, EventCms $eventCms,$id)
    {
        $this->validate($request, [
            'title' => 'required',
            'description' => 'required',
            'image' => 'nullable|mimes:jpeg,bmp,png',
            'meta_title' => 'required',
            'meta_keywords' => 'required',
            'meta_description' => 'required',
        ]);
        $input = $request->all();
        $eventCms = EventCms::where('id', $id)->first();
        if ($request->hasFile('image')) {
            if (!empty($eventCms->image)) {
                $oldImage = public_path('images/' . $eventCms->image);
                if (file_exists($oldImage)) {
                    unlink($oldImage);
                }
            }
            $image = $request->file('image');
            $filename = rand(11111, 99999) . $image->getClientOriginalName();
            $image_resize = Image::make($image->getRealPath())->resize(400, 400);
            $image_resize->save(public_path('images/' . $filename));
            $input['image'] = $filename;
        } else {
            $input['image'] = $eventCms->image;
        }
        $input['slug'] = str_slug($request->input('title'));
        $pageUpdate = EventCms::find($id)->update($input);
        if ($pageUpdate) {
            return redirect('admin/event-pages')->with('success', 'Event page updated successfully');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\EventCms  $eventCms
     * @return \Illuminate\Http\Response
     */
    public function destroy(EventCms $eventCms,$id)
    {
        $eventCms = EventCms::where('id', $id)->first();
        if (!empty($eventCms->image)) {
            $oldImage = public_path('images/' . $eventCms->image);
            if (file_exists($oldImage)) {
                unlink($oldImage);
            }
        }
        
        EventCms::destroy($id);
        Session()->flash('success', 'Event page deleted successfully.');
        return redirect()->route('event-pages.index');
    }
}
