<?php

use Illuminate\Http\Request;

/*
  |--------------------------------------------------------------------------
  | API Routes
  |--------------------------------------------------------------------------
  |
  | Here is where you can register API routes for your application. These
  | routes are loaded by the RouteServiceProvider within a group which
  | is assigned the "api" middleware group. Enjoy building your API!
  |
 */

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


Route::post('notify-paypal', 'CartController@updateTransactionDetails');
Route::post('notify-massage-booking-paypal', 'BookingController@updateTherapyBookingTransactionDetails');


Route::get('banners', 'ApiController@getBanners');

Route::get('products', 'ApiController@getAllProducts');
Route::get('home-products', 'ApiController@getHomePageProducts');

Route::get('get-category-products', 'ApiController@getCategoryProducts');
Route::get('get-subcategory-products', 'ApiController@getSubCategoryProducts');
Route::get('product-details', 'ApiController@getProductDetails');



Route::get('all-cat-subcat', 'ApiController@getAllCategorySubcategory');

Route::post('user-sign-up', 'ApiController@userSignup');
Route::get('user-login', 'ApiController@userLogin');
Route::get('user-details', 'ApiController@fetchUserDetails');
Route::get('user-change-password', 'ApiController@userChangePassword');
Route::get('user-forgot-password', 'ApiController@userForgotPassword');
Route::get('user-order-history', 'ApiController@userOrderHistory');
Route::get('user-order-details', 'ApiController@userOrderDetails');


Route::get('psychic-reading-bookings', 'ApiController@psychicReadingBookings');
Route::get('save-psychic-reading-bookings', 'ApiController@savePsychicReadingBookings');

Route::get('massage-therapy-bookings', 'ApiController@massageTherapyBookings');
Route::get('save-massage-therapy-bookings', 'ApiController@saveMassageTherapyBookings');


Route::get('psychic-reading-user-price', 'ApiController@psychicReadingPrice');
Route::get('massage-therapy-user-price', 'ApiController@massageTherapyPrice');



Route::get('search-products', 'ApiController@getSearchProducts');

Route::get('add-to-cart', 'ApiController@addProductsToCart');
Route::get('cart-items', 'ApiController@cartDetails');
Route::get('delete-item-from-cart', 'ApiController@deleteCartItem');
Route::get('decrement-cart-qty', 'ApiController@decrementCartQty');
Route::get('validate-coupon-code', 'ApiController@validateCouponCode');

Route::post('place-order', 'ApiController@placeOrder');

Route::get('update-trans-details', 'ApiController@updateTransDetails');

Route::get('update-mtb-trans-details', 'ApiController@updateMTBDetails');






