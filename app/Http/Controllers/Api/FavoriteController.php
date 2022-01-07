<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Favorite;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use PHPUnit\Exception;

class FavoriteController extends Controller
{
    private $favorite;
  	private $product;
    public function __construct(Favorite $favorite, Product $product)
    {
        $this->favorite = $favorite;
      	$this->product = $product;
    }
    public function add_favorite(Request $request){
        try{
            DB::beginTransaction();
            $favorite = $this->favorite->where("product_id",$request->product_id)->where("user_id",Auth::user()->id)->get();
            if (count($favorite)!=0){
                return response()->json(['msg' => 'Đã có trong mục yêu thích'],203,
                    ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
            }
            $this->favorite->create([
                'product_id'=>$request->product_id,
                'user_id'=>Auth::user()->id,
            ]);
            DB::commit();
            return response()->json(['msg' => 'Thêm thành công'],203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        } catch (Exception $exception){
            DB::rollBack();
            return response()->json(['msg' => 'Thêm thất bại'],203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        }
    }

    public function all_favorite(){
        $favorite = $this->favorite->where('user_id',Auth::user()->id)->get();
      	$products = $this->product->all();
        $arr = array();
        foreach ($favorite as $f){
            foreach ($products as $product){
                if ($f->product_id == $product->id) {
                    $f->image = $product->image;
                    $f->name_product = $product->name;
                  	$f->price = $product->price;
                    $arr[] = $f;
                }
            }
        }
      return $arr;
    }

    public function delete($id){
        try {
            $favorite = $this->favorite->find($id);
            if ($favorite->user_id!=Auth::user()->id){
                return response()->json(['msg' => 'Xóa thất bại'],203,
                    ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
            }
            $favorite->delete();
            return response()->json(['msg' => 'Xóa thành công'],203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        }catch (Exception $exception){
            DB::rollBack();
            return response()->json(['msg' => 'Xóa thất bại'],203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        }
    }
}
