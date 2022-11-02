<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\ProductImage;
use App\Category;
use Image;
use App\ProductStock;

class ProductController extends Controller {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
     public function __construct() {
        $this->middleware('auth');
    }
    public function index() {
        $getProducts = Product::with(['category', 'subcategories'])->orderBy('id', "DESC")->get();
//        dd($getProducts);
        return view('admin.products.index', compact('getProducts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {
        $subcategories = array('' => 'Select Subcategories');
        return view('admin.products.create', compact('subcategories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {
        $allInput = $request->all();
        //dd($allInput);
        $this->validate($request, [
            'category_id' => 'required',
            'sub_category_id' => 'required',
            'name' => 'required',
            'price' => 'required',
            'description' => 'required',
            'shipping_price' => 'required',
            'price' => 'required',
            'meta_title' => 'required',
            'meta_keywords' => 'required',
            'meta_description' => 'required',
            'image' => 'required|mimes:jpeg,bmp,png,jpg',
            'prod_image' => 'required',
        ]);

        $count = Product::where('name', $request->name)->count();

        if ($count == 0) {
            if ($request->hasFile('image')) {
                $image = $request->file('image');
                $filename = rand(11111, 99999) . $image->getClientOriginalName();
                $image_resize = Image::make($image->getRealPath())->resize(500, 500);
                $image_resize->save(public_path('images/products/' . $filename));
                $allInput['image'] = $filename;
            }
            $allInput['slug'] = str_slug($request->name, '-');
			$allInput['prd_cs_opt'] = $request->prd_cs_opt;
			//dd($allInput);
			
			
            $saveProduct = Product::create($allInput);

            ######## Multiple Image upload section ###########
            if ($saveProduct) {
                if ($request->hasFile('prod_image')) {
                    $prod_images = $request->file('prod_image');
                    foreach ($prod_images as $prod_image) {
                        $prod_filename = rand(11111, 99999) . $prod_image->getClientOriginalName();
                        $prod_image_resize = Image::make($prod_image->getRealPath())->resize(500, 500);
                        $prod_image_resize->save(public_path('images/products/multiple_images/' . $prod_filename));
                        $allInput['image'] = $prod_filename;
                        $allInput['product_id'] = $saveProduct->id;
                        $saveProductImage = ProductImage::create($allInput);
                    }
                }
				
				######## Save Product size,color,stock details record ##########
				//if($request->prd_cs_opt == 1){
					$prd_stock_row_count = $request->input('prd_stock_row_count');
					for($s = 1;$s<=$prd_stock_row_count; $s++){
						$col="color_id".$s;
			  			$color_id = $request->input($col);
			  
						$siz="size_id".$s;
						$size_id = $request->input($siz);
						
						$pro="stock".$s;
						$stock = $request->input($pro);
						
						$psd_count = ProductStock::where([['product_id','=',$saveProduct->id],['size_id','=',$request->size_id],['color_id','=',$request->color_id]])->count();
						
						if($psd_count ==0 && $color_id!='' && $size_id!='' && $stock!=''){
							$allInput['product_id'] = $saveProduct->id;
							$allInput['size_id'] = $size_id;
							$allInput['color_id'] = $color_id;
							$allInput['stock'] = $stock;
							ProductStock::create($allInput);
						}else{
							$allInput['product_id'] = $saveProduct->id;
				 			$allInput['stock'] = $stock;
				  			ProductStock::create($allInput);
						}
					}
		    	//}
            }
            //return redirect('admin/products')->with('success', 'Product added successfully');
			return redirect('admin/products/create')->with('success', 'Product added successfully.');	
        } else {
			return redirect('admin/products/create')->with('error', 'Product already exists.');
            //return redirect()->back()->with('error', 'Product already exists.');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product) {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product) {
        $product = Product::where('id', $product->id)->with('productImages')->first();
        return view('admin.products.edit', compact('product'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product) {
        $allInput = $request->all();
//        dd($allInput);
        $this->validate($request, [
            'category_id' => 'required',
            'sub_category_id' => 'required',
            'name' => 'required',
            'price' => 'required',
            'description' => 'required',
            'shipping_price' => 'required',
            'price' => 'required',
            'meta_title' => 'required',
            'meta_keywords' => 'required',
            'meta_description' => 'required',
            'image' => 'mimes:jpeg,bmp,png',
        ]);
        $count = Product::where('name', $request->name)->where('id', '!=', $product->id)->count();

        if ($count > 0) {
            return redirect()->back()->with('error', 'Product already exists.');
        }

        if ($request->hasFile('image')) {
            if (!empty($product->image)) {
                $prodImage = public_path('images/products/' . $product->image);
                if (file_exists($prodImage)) {
                    unlink($prodImage);
                }
            }
            $image = $request->file('image');
            $filename = rand(11111, 99999) . $image->getClientOriginalName();
            $image_resize = Image::make($image->getRealPath())->resize(500, 500);
            $image_resize->save(public_path('images/products/' . $filename));
            $allInput['image'] = $filename;
        } else {
            $allInput['image'] = $product->image;
        }
        $allInput['best_seller'] = $request->best_seller ? $request->best_seller : 0;
        $allInput['slug'] = str_slug($request->name, '-');
		
		$allInput['prd_cs_opt'] = $request->cs;
		 
        $updateProduct = $product->update($allInput);

        if ($updateProduct) {
            if ($request->hasFile('prod_image')) {
                $prod_images = $request->file('prod_image');
                foreach ($prod_images as $prod_image) {
                    $prod_filename = rand(11111, 99999) . $prod_image->getClientOriginalName();
                    $prod_image_resize = Image::make($prod_image->getRealPath())->resize(500, 500);
                    $prod_image_resize->save(public_path('images/products/multiple_images/' . $prod_filename));
                    $allInput['image'] = $prod_filename;
                    $allInput['product_id'] = $product->id;
                    $saveProductImage = ProductImage::create($allInput);
                }
            }
			
			
			$prd_stock_row_count = $request->input('prd_stock_row_count');
			for($s = 1;$s<=$prd_stock_row_count; $s++){
				
				$dbr="db_record".$s;
				$dbr_psd_id = $request->input($dbr);
				
				$col="color_id".$s;
				$color_id = $request->input($col);
				
				$siz="size_id".$s;
				$size_id = $request->input($siz);
				
				$sto_in="stock_in_hand".$s;
				$stock_in_hand = $request->input($sto_in);
				
				$sto="stock".$s;
				$stock = ($request->input($sto))?$request->input($sto):0;
				
				
				if($dbr_psd_id!=''){
				  if($request->cs==0){
					   ProductStock::where('product_id', $product->id)->delete();
					   $final_stock = $stock_in_hand+$stock;
					   $ps_data = ['product_id'=>$product->id,'stock'=>$final_stock];
					   ProductStock::create($ps_data);
				  }else{
					$psd_count = ProductStock::where([['id','<>',$dbr_psd_id],['product_id','=',$product->id],['size_id','=',$size_id],['color_id','=',$color_id]])->count();
					if($psd_count==0){
					  $final_stock = $stock_in_hand+$stock;
					  $ps_data = ['color_id'=>$color_id,'size_id'=>$size_id,'stock'=>$final_stock];
					  $update_prd_dtls = ProductStock::where('id', $dbr_psd_id)->update($ps_data);
					}
				  }
				}else{
					$psd_count_ins = ProductStock::where([['product_id','=',$product->id],['size_id','=',$size_id],['color_id','=',$color_id]])->count();
					if($psd_count_ins ==0 && $color_id!='' && $size_id!='' && $stock!=''){
						$ps_data = ['product_id'=>$product->id,'color_id'=>$color_id,'size_id'=>$size_id,'stock'=>$stock];
						ProductStock::create($ps_data);
					}
				}
			}
			
			
			
			
        }
		
		return redirect('admin/products/'.$product->id.'/edit')->with('success', 'Product updated updated successfully.');
		

       //return redirect('admin/products')->with('success', 'Product updated updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function showProductImageUpload() {
        return view('admin.products.product-image-upload');
    }

    public function destroy(Product $product) {
        if (!empty($product->image)) {
            $prodImage = public_path('images/products/' . $product->image);
            if (file_exists($prodImage)) {
                unlink($prodImage);
            }
        }
        $getProdMulImages = ProductImage::where('product_id', $product->id)->get();
        if ($getProdMulImages) {
            foreach ($getProdMulImages as $getProdMulImage) {
                if (!empty($getProdMulImage->image)) {
                    $prodMulImage = public_path('images/products/' . $getProdMulImage->image);
                    if (file_exists($prodImage)) {
                        unlink($prodMulImage);
                    }
                }
                ProductImage::destroy($getProdMulImage->id);
            }
        }
		
		$getProdStocks = ProductStock::where('product_id', $product->id)->get();
        if ($getProdStocks) {
            foreach ($getProdStocks as $getProdStock) {
                ProductStock::destroy($getProdStock->id);
            }
        }
		
		
        Product::destroy($product->id);
        return redirect()->back()->with('success', 'Product deleted successfully');
    }

}
