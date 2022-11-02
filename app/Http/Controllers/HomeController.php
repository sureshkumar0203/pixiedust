<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Mail;
use App\Mail\ContactMail;
use \App\Banner;
use \App\CmsPage;
use \App\Product;
use App\Category;
use App\SubCategory;
use \App\EventCms;
use \App\OtherCmsPage;
use App\ProductStock;
use App\IntutiveReadingBooking;


class HomeController extends Controller {
    /**
     * Create a new controller instance.
     *
     * @return void
     */

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        $getBanners = Banner::orderBy('id', 'desc')->get();
        $getNewProducts = Product::orderBy('id', 'desc')->limit(12)->get();
		//$getNewProducts = Product::with('productStock')->orderBy('id', 'desc')->limit(12)->get();
        $getBestSellerProducts = Product::where('best_seller', 1)->orderBy('id', 'desc')->limit(12)->get();
        $get_home_cms = CmsPage::where('id', 8)->first();
		
        return view('home', compact('getBanners', 'getNewProducts', 'getBestSellerProducts','get_home_cms','testi_data'));
    }

    public function aboutUs() {
        $getAboutUs = CmsPage::where('id', 1)->first();
        return view('about-us', compact('getAboutUs'));
    }
    
    public function psychicReaders(){
       $pr_rec = OtherCmsPage::where('cms_page', 'Psychic Readers')->orderBy('id','DESC')->get();
       return view('psychic-readers', compact('getContent','pr_rec'));
    }

    public function massageTherapists(){
       $mt_rec = OtherCmsPage::where('cms_page', 'Massage Therapy')->orderBy('id','DESC')->get();
       return view('massage-therapists', compact('getContent','mt_rec'));
    }
    
    public function aboutSymbols(){
        $symbols_info = OtherCmsPage::where('cms_page', 'About Symbols')->orderBy('id', 'DESC')->get();
        return view('about-symbols', compact('symbols_info'));
    }

    public function privacyPolicy() {
        $getPrivacyPolicy = CmsPage::where('id', 3)->first();
        return view('privacy-policy', compact('getPrivacyPolicy'));
    }
    
    
    public function termAndConditions() {
        $getTermAndConditions = CmsPage::where('id', 4)->first();
        return view('term-and-conditions', compact('getTermAndConditions'));
    }
    
    public function downtownParking(){
        $downtownParking = CmsPage::where('id', 5)->first();
        return view('downtown-parking', compact('downtownParking'));
    }

    public function contactUs() {
        return view('contact-us');
    }

    public function sendContactEmail(Request $request) {

        $this->validate($request, [
            'name' => 'required',
            'email' => 'required',
            'contact_no' => 'required',
            'enquiry' => 'required',
        ]);

        //dd($request->email);
        //$adminEmail = 'soumya@bletindia.com';
        $adminEmail = getAdminDetails()->alt_email;
        $name = $request->name;
        $email = $request->email;
        $contact_no = $request->contact_no;
        $enquiry = $request->enquiry;
        Mail::send('emails.contact_email', ['name' => $name, 'email' => $email, 'contact_no' => $contact_no, 'enquiry' => $enquiry], function ($message) use($adminEmail,$email) {

            $message->from($email, 'Pixiedust');
            $message->subject('Contact Email');
            $message->to($adminEmail);
        });

        return redirect()->back()->with('success', 'Your feedback posted successfully.We will get back you soon.');
    }

    public function getProducts() {
        $getAllProducts = Product::with('category')->orderBy('id','DESC')->get();
        //dd($getAllProducts);
        return view('products', compact('getAllProducts'));
    }

    public function getProductDetails($slug) {
        if ($slug) {
            $getProductsId = Product::where('slug', $slug)->select('id')->first();
            if ($getProductsId) {
                $getProductDetails = Product::with(['category', 'subcategories', 'productImages','ProductStock'])->where('id', $getProductsId->id)->first();
            }
        }
        //dd($getProductDetails);
        return view('product-details', compact('getProductDetails'));
    }
    
     public function getCategoryProducts($slug) {
        if ($slug) {
            $chkCategoryProducts = Category::where('slug', $slug)->first();
            if ($chkCategoryProducts) {
                $getCatProducts = Product::with('category')->where('category_id', $chkCategoryProducts->id)->get();
                return view('category-products', compact('getCatProducts', 'chkCategoryProducts'));
            }
        }
    }

    public function getSubCategoryProducts() {
        $catSlug = request()->segment(2);
        $subCatSlug = request()->segment(3);
        if ($subCatSlug) {
            $getSubCatProducts = SubCategory::where('slug', $subCatSlug)->with('category', 'products')->first();
            return view('sub-category-products', compact('getSubCatProducts'));
        }
    }
    
    public function psychicReading() {
        $getReaders = \App\ServiceSchedule::where('id', 1)->select('description')->first();
        $getReadersPrices = \App\IntutivePriceSetting::get();
        return view('psychic-reading', compact('getReaders', 'getReadersPrices'));
    }

    public function massageTherapy() {
        $getMassageTherapists = \App\ServiceSchedule::where('id', 2)->select('description')->first();
        $getMassageTherapyPrices = \App\MassagePriceSetting::get();
        return view('massage-therapy', compact('getMassageTherapists', 'getMassageTherapyPrices'));
    }
    
    public function events(){
        $eventsCms = EventCms::all();
        return view('events', compact('eventsCms'));
    }

    public function eventsDetails($slug){
        $getEventsCms = EventCms::where('slug', $slug)->first();
        return view('events-details', compact('getEventsCms'));
    }
    
    public function viewSearchResult(Request $request){
		$sea_str = $request->search_all;
		$getAllProducts = Product::whereHas('category', function($query) use($sea_str) {
				$query->where('name','LIKE','%'.$sea_str.'%');
			    $query->orWhere('description','LIKE','%'.$sea_str.'%');
			})->orderBy('id', 'DESC')->get();
        return view('search-result', compact('getAllProducts'));
    }
    
    public function blogs(){
        $blog_info = OtherCmsPage::where('cms_page', 'Blog')->orderBy('id', 'DESC')->get();
        return view('blogs', compact('blog_info'));
    }
	
	public function blogDetails($blog_id){
		$blog_data = OtherCmsPage::where('id', $blog_id)->first();
		if($blog_data == NULL){
			return Redirect::to('blogs');
		}
		return view('blog-details',compact('blog_data'));
	}
	
	public function CancelPsychicBooking(Request $request) {
		$pb_id = $request->pb_id;
		IntutiveReadingBooking::where('id', $pb_id)->update(['cancel_status' => 1]);
		return response()->json(['status' => 'success']);
	}
	
	
    public function errorPage() {
        return view('errors.404');
    }
    

}
