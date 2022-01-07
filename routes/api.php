<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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
function getDayEndTime(){
    $oder = \App\Models\Oder::all();
    $day = strtotime(now());
    foreach ($oder as $item){
        if ($day > strtotime($item->end_time)){
            $item->delete();
        }
    }
}
getDayEndTime();
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::prefix('statistical')->group(function () {
    Route::get('/', [
        'as' => 'get_statistical',
        'uses' => 'App\Http\Controllers\Api\StatisticalController@get_statistical'
    ])->middleware('auth:sanctum', 'check_user2');
  	Route::get('/all', [
        'as' => 'get_statistical_all',
        'uses' => 'App\Http\Controllers\Api\StatisticalController@get_statistical_all'
    ])->middleware('auth:sanctum', 'check_admin');
  	Route::post('/', [
        'as' => 'post_statistical',
        'uses' => 'App\Http\Controllers\Api\StatisticalController@post_statistical'
    ])->middleware('auth:sanctum', 'check_user2');
  	Route::post('/all', [
        'as' => 'post_statistical_all',
        'uses' => 'App\Http\Controllers\Api\StatisticalController@post_statistical_all'
    ])->middleware('auth:sanctum', 'check_admin');
});
Route::prefix('oder-manager')->group(function (){
    Route::get('/',[
        'as' => 'get_oder_user',
        'uses' => 'App\Http\Controllers\Api\OderManagerController@get_oder_user'
    ])->middleware('auth:sanctum', 'check_user2');
	Route::get('/{id}', [
        'as' => 'get_oder_detial',
        'uses' => 'App\Http\Controllers\Api\OderManagerController@get_oder_detial'
    ])->middleware('auth:sanctum', 'check_user2');
    Route::post('/confirm/{id}',[
        'as' => 'active_oder',
        'uses' => 'App\Http\Controllers\Api\OderManagerController@active_oder'
    ])->middleware('auth:sanctum', 'check_user2');
	Route::post('/code-bill/{id}', [
        'as' => 'code',
        'uses' => 'App\Http\Controllers\Api\OderManagerController@code_bill'
    ])->middleware('auth:sanctum', 'check_user2');
  	Route::post('/code-bill-payment/{id}', [
        'as' => 'code-payment',
        'uses' => 'App\Http\Controllers\Api\OderManagerController@code_bill_payment'
    ])->middleware('auth:sanctum', 'check_user2');
    Route::post('/confirm-payment/{id}',[
        'as' => 'payment_oder',
        'uses' => 'App\Http\Controllers\Api\OderManagerController@payment_oder'
    ])->middleware('auth:sanctum', 'check_user2');

    Route::delete('/{id}',[
        'as' => 'delete_oder',
        'uses' => 'App\Http\Controllers\Api\OderManagerController@delete_oder'
    ])->middleware('auth:sanctum', 'check_user2');
});

Route::prefix('oder')->group(function () {
    Route::post('/', [
        'as' => 'post_oder',
        'uses' => 'App\Http\Controllers\Api\OderController@post'
    ])->middleware('auth:sanctum', 'check_user1');
    Route::post('/code-bill/{id}', [
        'as' => 'code-bill',
        'uses' => 'App\Http\Controllers\Api\OderController@code_bill'
    ])->middleware('auth:sanctum', 'check_user1');
  	Route::post('/code-bill-payment/{id}', [
        'as' => 'code-bill-payment',
        'uses' => 'App\Http\Controllers\Api\OderController@code_bill_payment'
    ])->middleware('auth:sanctum', 'check_user1');
    Route::get('/get/{id}', [
        'as' => 'get_all_oder',
        'uses' => 'App\Http\Controllers\Api\OderController@get_all_oder'
    ])->middleware('auth:sanctum', 'check_user1');
    Route::get('/{id}', [
        'as' => 'get_oder',
        'uses' => 'App\Http\Controllers\Api\OderController@get_oder'
    ])->middleware('auth:sanctum', 'check_user1');
    Route::delete('/{id}', [
        'as' => 'get_all_oder',
        'uses' => 'App\Http\Controllers\Api\OderController@delete'
    ])->middleware('auth:sanctum', 'check_user1');
});

Route::prefix('user')->group(function () {
    Route::get('/', [
        'as' => 'get_all_user',
        'uses' => 'App\Http\Controllers\Api\UserController@get'
    ]);
    Route::get('/{id}', [
        'as' => 'get_user',
        'uses' => 'App\Http\Controllers\Api\UserController@get_user'
    ]);
    Route::get('/active/{id}', [
        'as' => 'active_user',
        'uses' => 'App\Http\Controllers\Api\UserController@active_user'
    ])->middleware('auth:sanctum', 'check_admin');
});


Route::prefix('comment')->group(function () {
    Route::get('/{product_id}', [
        'as' => 'get_comment',
        'uses' => 'App\Http\Controllers\Api\CommentController@get'
    ]);
    Route::post('/', [
        'as' => 'post_comment',
        'uses' => 'App\Http\Controllers\Api\CommentController@post'
    ])->middleware('auth:sanctum', 'check_user1');
    Route::delete('/{id}', [
        'as' => 'delete_comment',
        'uses' => 'App\Http\Controllers\Api\CommentController@delete'
    ])->middleware('auth:sanctum', 'check_user1');
});

Route::prefix('vote')->group(function () {
    Route::get('/{user_id}', [
        'as' => 'get_vote',
        'uses' => 'App\Http\Controllers\Api\VoteController@get'
    ]);
    Route::post('/', [
        'as' => 'post_vote',
        'uses' => 'App\Http\Controllers\Api\VoteController@post'
    ])->middleware('auth:sanctum', 'check_user1');
    Route::delete('/{id}', [
        'as' => 'delete_vote',
        'uses' => 'App\Http\Controllers\Api\VoteController@delete'
    ])->middleware('auth:sanctum', 'check_user1');
});

Route::prefix('favorite')->group(function () {
    Route::post('/', [
        'as' => 'post_add_favorite',
        'uses' => 'App\Http\Controllers\Api\FavoriteController@add_favorite',
    ])->middleware('auth:sanctum', 'check_user1');
    Route::get('/', [
        'as' => 'get_all_favorite',
        'uses' => 'App\Http\Controllers\Api\FavoriteController@all_favorite',
    ])->middleware('auth:sanctum', 'check_user1');
    Route::delete('/{id}', [
        'as' => 'delete_favorite',
        'uses' => 'App\Http\Controllers\Api\FavoriteController@delete',
    ])->middleware('auth:sanctum', 'check_user1');
});

Route::prefix('news')->group(function () {
    Route::get('/', [
        'as' => 'get_all_news',
        'uses' => 'App\Http\Controllers\Api\NewsController@get_all_news',
    ]);
    Route::get('/{id}', [
        'as' => 'get_news',
        'uses' => 'App\Http\Controllers\Api\NewsController@get_news',
    ]);
    Route::get('/product/{product_id}', [
        'as' => 'get_product_news',
        'uses' => 'App\Http\Controllers\Api\NewsController@get_product_news',
    ]);
    Route::get('/user/{user_id}', [
        'as' => 'get_user_news',
        'uses' => 'App\Http\Controllers\Api\NewsController@gget_user_news',
    ]);
    Route::post('/', [
        'as' => 'post_news',
        'uses' => 'App\Http\Controllers\Api\NewsController@post',
    ])->middleware('auth:sanctum', 'check_user2');
    Route::delete('/{id}', [
        'as' => 'delete_news',
        'uses' => 'App\Http\Controllers\Api\NewsController@delete',
    ])->middleware('auth:sanctum', 'check_user2');
    Route::patch('/{id}', [
        'as' => 'patch_news',
        'uses' => 'App\Http\Controllers\Api\NewsController@patch',
    ])->middleware('auth:sanctum', 'check_user2');
});

Route::prefix('product/information')->group(function () {
    Route::get('/get/{product_id}', [
        'as' => 'get_info_product',
        'uses' => 'App\Http\Controllers\Api\ProductInformationController@get_info_product'
    ]);
    Route::get('/{id}', [
        'as' => 'get_info_pro',
        'uses' => 'App\Http\Controllers\Api\ProductInformationController@get'
    ]);
    Route::post('/', [
        'as' => 'post_info_product',
        'uses' => 'App\Http\Controllers\Api\ProductInformationController@post'
    ])->middleware('auth:sanctum', 'check_user2');
    Route::delete('/{id}', [
        'as' => 'delete_info_product',
        'uses' => 'App\Http\Controllers\Api\ProductInformationController@delete'
    ])->middleware('auth:sanctum', 'check_user2');
});
Route::prefix('product/image')->group(function () {
    Route::post('/', [
        'as' => 'post_image_product',
        'uses' => 'App\Http\Controllers\Api\ProductImageController@post_image'
    ])->middleware('auth:sanctum', 'check_user2');
    Route::get('/get/{product_id}', [
        'as' => 'get_all_image_product',
        'uses' => 'App\Http\Controllers\Api\ProductImageController@get_image'
    ]);
    Route::get('/{id}', [
        'as' => 'get_image_product',
        'uses' => 'App\Http\Controllers\Api\ProductImageController@get'
    ]);
    Route::delete('/{id}', [
        'as' => 'delete_image_product',
        'uses' => 'App\Http\Controllers\Api\ProductImageController@delete'
    ])->middleware('auth:sanctum', 'check_user2');
});

Route::prefix('product')->group(function () {
    Route::get('/', [
        'as' => 'get_all_product',
        'uses' => 'App\Http\Controllers\Api\ProductController@get_all'
    ]);

    Route::get('/get/{id}', [
        'as' => 'get_product_user',
        'uses' => 'App\Http\Controllers\Api\ProductController@get_product_user'
    ]);
    Route::get('/category/{id}', [
        'as' => 'get_product_category',
        'uses' => 'App\Http\Controllers\Api\ProductController@get_product_category'
    ]);
    Route::get('/location/{location}', [
        'as' => 'get_product_location',
        'uses' => 'App\Http\Controllers\Api\ProductController@get_product_location'
    ]);
    Route::get('/{id}', [
        'as' => 'get_product',
        'uses' => 'App\Http\Controllers\Api\ProductController@get_product'
    ]);
    Route::post('/', [
        'as' => 'post_product',
        'uses' => 'App\Http\Controllers\Api\ProductController@post'
    ])->middleware('auth:sanctum', 'check_user2');
    Route::delete('/{id}', [
        'as' => 'delete_product',
        'uses' => 'App\Http\Controllers\Api\ProductController@delete'
    ])->middleware('auth:sanctum', 'check_user2');
    Route::patch('/{id}', [
        'as' => 'patch_product',
        'uses' => 'App\Http\Controllers\Api\ProductController@patch'
    ])->middleware('auth:sanctum', 'check_user2');
});
Route::prefix('employees')->group(function () {
    Route::get('/{id}', [
        'as' => 'get_info_employees',
        'uses' => 'App\Http\Controllers\Api\EmployeesController@get_info_employees'
    ]);
    Route::get('/get/{user_id}', [
        'as' => 'get_employees',
        'uses' => 'App\Http\Controllers\Api\EmployeesController@get'
    ]);
    Route::post('/', [
        'as' => 'post_employees',
        'uses' => 'App\Http\Controllers\Api\EmployeesController@post'
    ])->middleware('auth:sanctum', 'check_user2');
    Route::patch('/{id}', [
        'as' => 'patch_employees',
        'uses' => 'App\Http\Controllers\Api\EmployeesController@patch'
    ])->middleware('auth:sanctum', 'check_user2');
    Route::delete('/{id}', [
        'as' => 'delete_employees',
        'uses' => 'App\Http\Controllers\Api\EmployeesController@delete'
    ])->middleware('auth:sanctum', 'check_user2');
});

Route::prefix('user/information')->group(function () {
    Route::get('/get/{user_id}', [
        'as' => 'get_info_user',
        'uses' => 'App\Http\Controllers\Api\UserInformationController@get_infor_user'
    ]);
    Route::get('/{id}', [
        'as' => 'get_ìno',
        'uses' => 'App\Http\Controllers\Api\UserInformationController@get'
    ])->middleware('auth:sanctum', 'check_user2');
    Route::post('/', [
        'as' => 'post_info',
        'uses' => 'App\Http\Controllers\Api\UserInformationController@post'
    ])->middleware('auth:sanctum', 'check_user2');
    Route::delete('/{id}', [
        'as' => 'delete_info',
        'uses' => 'App\Http\Controllers\Api\UserInformationController@delete'
    ])->middleware('auth:sanctum', 'check_user2');
});

Route::prefix('category')->group(function () {
    Route::get('/', [
        'as' => 'all_category',
        'uses' => 'App\Http\Controllers\Api\CategoryController@index',
    ]);
    Route::get('/{id}', [
        'as' => 'get_category',
        'uses' => 'App\Http\Controllers\Api\CategoryController@get',
    ]);
    Route::patch('/{id}', [
        'as' => 'post_category',
        'uses' => 'App\Http\Controllers\Api\CategoryController@patch',
    ])->middleware('auth:sanctum', 'check_admin');
    Route::post('/', [
        'as' => 'create_category',
        'uses' => 'App\Http\Controllers\Api\CategoryController@create',
    ])->middleware('auth:sanctum', 'check_admin');
    Route::delete('/{id}', [
        'as' => 'create_category',
        'uses' => 'App\Http\Controllers\Api\CategoryController@delete',
    ])->middleware('auth:sanctum', 'check_admin');
});

Route::prefix('auth')->group(function () {
    Route::post('/register', [
        'as' => 'register',
        'uses' => 'App\Http\Controllers\Api\AuthController@register',
    ]);
    Route::post('/login', [
        'as' => 'login',
        'uses' => 'App\Http\Controllers\Api\AuthController@login',
    ]);
    Route::get('/current_user', [
        'as' => 'current_user',
        'uses' => 'App\Http\Controllers\Api\AuthController@getCurrentUser',
    ])->middleware('auth:sanctum');
    Route::post('/logout', [
        'as' => 'logout',
        'uses' => 'App\Http\Controllers\Api\AuthController@logout',
    ])->middleware('auth:sanctum');
});

Route::prefix('location')->group(function () {
    Route::get('/', [
        'as' => 'location',
        'uses' => 'App\Http\Controllers\Api\LocationController@index',
    ]);
    Route::get('/{id}', [
        'as' => 'location',
        'uses' => 'App\Http\Controllers\Api\LocationController@city_id',
    ]);
    Route::get('/{id_city}/{id}', [
        'as' => 'location',
        'uses' => 'App\Http\Controllers\Api\LocationController@district_id',
    ]);
});
