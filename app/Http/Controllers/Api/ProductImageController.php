<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\ProductImage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use function Sodium\add;

class ProductImageController extends Controller
{
    private $product_image;
    private $product;
    public function __construct(Product $product,ProductImage $productImage)
    {
        $this->product = $product;
        $this->product_image = $productImage;
    }

    public function get($id){
        return $this->product_image->find($id);
    }

    public function get_image($product_id){
        return $this->product->find($product_id)->images()->get();
    }

    public function post_image(Request $request){
        try{
            DB::beginTransaction();
            $product = $this->product->find($request->product_id);
            if ($product->user_id!= Auth::user()->id)
            return response()->json(['msg' => 'Không phải sản phẩm của bạn'],203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
          	foreach ($request->image as $fileItem) {
            	 $priduct_image = $this->product_image->create([
                        'product_id'=>$request->product_id,
                        'image'=> $fileItem,
                    ]);
            }
//            $list = [];
//            if ($request->hasFile('image')) {
//                foreach ($request->image as $fileItem) {
//                    $path = $fileItem->storeAS('public/product/image', $fileItem->getClientOriginalName());
//                    $get_name_image = $fileItem->getClientOriginalName();
//                    $name_image = current(explode('.', $get_name_image));
//                    $new_image = $name_image . rand(0, 99) . '.' . $fileItem->getClientOriginalExtension();
//                    $fileItem->move('image/product/details', $new_image);
//                    $priduct_image = $this->product_image->create([
//                        'product_id'=>$request->product_id,
//                        'image'=>'image/product/details/' . $new_image,
//                    ]);
//                    $list[] = $priduct_image;
//                }
//            }
            DB::commit();
            return response()->json(['msg' => 'Thêm thành công'],200,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        } catch (\Exception $exception){
            DB::rollBack();
            return response()->json(['msg' => 'Thêm thất bại'],203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        }
    }

    public function delete($id){
        try{
            DB::beginTransaction();
            $product_image = $this->product_image->find($id);
            $product = $this->product->find($product_image->product_id);
            if ($product->user_id!=Auth::user()->id){
                return response()->json(['msg' => 'Không phải sản phẩm của bạn'],203,
                    ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
            }
            $product_image->delete();
            DB::commit();
            return response()->json(['msg' => 'Xóa thành công'],203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        } catch (\Exception $exception){
            DB::rollBack();
            return response()->json(['msg' => 'Xóa thất bại'],203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        }
    }
}
