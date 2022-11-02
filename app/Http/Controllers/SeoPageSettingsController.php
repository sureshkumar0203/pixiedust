<?php

namespace App\Http\Controllers;

use App\SeoPageSettings;
use Illuminate\Http\Request;

class SeoPageSettingsController extends Controller {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        $getSeoPages = SeoPageSettings::get();
        return view('admin.seo.index', compact('getSeoPages'));
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
     * @param  \App\SeoPageSettings  $seoPageSettings
     * @return \Illuminate\Http\Response
     */
    public function show(SeoPageSettings $seoPageSettings) {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\SeoPageSettings  $seoPageSettings
     * @return \Illuminate\Http\Response
     */
    public function edit(SeoPageSettings $seoPageSettings, $id) {
        $seoPageSettings = SeoPageSettings::findOrfail($id);
        return view('admin.seo.edit', compact('seoPageSettings'));
        //dd($seoPageSettings);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\SeoPageSettings  $seoPageSettings
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id) {
        $inputData = $request->all();
        $this->validate($request, [
            'meta_title' => 'required',
            'meta_keywords' => 'required',
            'meta_description' => 'required',
        ]);
        $updateSeoPage = SeoPageSettings::find($id)->update($inputData);
        if ($updateSeoPage) {
            return redirect()->back()->with('success', 'Seo Data updated successfully.');
        } else {
            return redirect()->back()->with('success', 'Error Occured.');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\SeoPageSettings  $seoPageSettings
     * @return \Illuminate\Http\Response
     */
    public function destroy(SeoPageSettings $seoPageSettings) {
        //
    }

}
