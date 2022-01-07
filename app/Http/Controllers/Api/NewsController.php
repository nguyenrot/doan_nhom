<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\News;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class NewsController extends Controller
{
	private $news;
    private $product;
    public function __construct(News $news, Product $product)
    {
        $this->news = $news;
        $this->product = $product;
    }
        public function get_all_news(){
        $news = $this->news->all();
        $products = $this->product->all();
        $arr = array();
        foreach ($news as $new){
            foreach ($products as $product){
                if ($new->product_id == $product->id) {
                    $new->image = $product->image;
                    $new->name_product = $product->name;
                    $arr[] = $new;
                }
            }
        }
        return $arr;
    }
    public function get_news($id){
        $new = $this->news->find($id);
      	$products = $this->product->all();
        foreach ($products as $product){
          if ($new->product_id == $product->id) {
            $new->image = $product->image;
            $new->name_product = $product->name;
          }
        }
        return $new;
    }
    public function get_product_news($product_id){
        $news = $this->news->where("product_id",$product_id)->get();
        $products = $this->product->all();
        $arr = array();
        foreach ($news as $new){
            foreach ($products as $product){
                if ($new->product_id == $product->id) {
                    $new->image = $product->image;
                    $new->name_product = $product->name;
                    $arr[] = $new;
                }
            }
        }
        return $arr;
    }
    public function gget_user_news($user_id){
        $news = $this->news->where("user_id",$user_id)->get();
        $products = $this->product->all();
        $arr = array();
        foreach ($news as $new){
            foreach ($products as $product){
                if ($new->product_id == $product->id) {
                    $new->image = $product->image;
                    $new->name_product = $product->name;
                    $arr[] = $new;
                }
            }
        }
        return $arr;
    }
    public function post(Request $request){
        try {
            DB::beginTransaction();
            $s = "content";
            $news = $this->news->create([
                'title'=>$request->title,
                'slug'=>Str::slug($request->title),
                'description'=>$request->description,
                'content'=>$request->$s,
                'product_id'=>$request->product_id,
                'user_id'=>Auth::user()->id,
            ]);
            DB::commit();
            return response()->json(["news" => $news, 'msg' => 'Thêm thành công'],200,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        } catch (\Exception $exception){
            DB::rollBack();
            Log::error('Message'.$exception->getMessage().'Line : '.$exception->getLine());
            return response()->json(['msg' => 'Thêm thất bại'],203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        }
    }
    public function patch(Request $request,$id){
        try {
            DB::beginTransaction();
            $news = $this->news->find($id);
            if (empty($news) or $news->user_id!=Auth::user()->id){
                return response()->json(['msg' => 'Cập nhập thất bại'],203,
                    ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
            }
            $s = "content";
            $this->news->find($id)->update($request->all());
            if ($request->title){
                $this->news->find($id)->update(['slug'=>$request->title]);
            }
            DB::commit();
            return response()->json(["news" => $this->news->find($id), 'msg' => 'Cập nhập thành công'],200,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        } catch (\Exception $exception){
            DB::rollBack();
            Log::error('Message'.$exception->getMessage().'Line : '.$exception->getLine());
            return response()->json(['msg' => 'Cập nhập thất bại'],203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        }
    }
    public function delete($id){
        try {
            DB::beginTransaction();
            $news = $this->news->find($id);
            if (empty($news) or $news->user_id!=Auth::user()->id){
                return response()->json(['msg' => 'Xóa thất bại'],203,
                    ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
            }
            $news->delete();
            DB::commit();
            return response()->json(['msg' => 'Xóa thành công'],200,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        } catch (\Exception $exception){
            DB::rollBack();
            Log::error('Message'.$exception->getMessage().'Line : '.$exception->getLine());
            return response()->json(['msg' => 'Xóa thất bại'],203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        }
    }
}
