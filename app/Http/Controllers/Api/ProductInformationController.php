<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\ProductInformations;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class ProductInformationController extends Controller
{
    private $productInformations;
    private $product;
    public function __construct(ProductInformations $productInformations,Product $product)
    {
        $this->product = $product;
        $this->productInformations = $productInformations;
    }

    public function get_info_product($product_id){
        return $this->productInformations->where('product_id',$product_id)->get();
    }

    public function get($id){
        return $this->productInformations->find($id);
    }

    public function post(Request $request){
        try {
            DB::beginTransaction();
            $product = $this->product->find($request->product_id);
            if ($product->user_id!= Auth::user()->id)
                return response()->json(['msg' => 'Không phải sản phẩm của bạn'],203,
                    ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
            $list = [];
            $s = 'content';
            $content = $request->$s;
            $title = $request->title;
            for ($i=0;$i<count($content);$i++){
                $data = [
                    'product_id'=>$request->product_id,
                    'title'=>$title[$i],
                    'content'=>$content[$i],
                ];
                $productInformations = $this->productInformations->create($data);
                $list[] = $productInformations;
            }
            DB::commit();
            return response()->json(["productInformations" => $list, 'msg' => 'Thêm thành công'],200,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        } catch (\Exception $exception){
            Log::error('Message'.$exception->getMessage().'Line : '.$exception->getLine());
            DB::rollBack();
            return response()->json(['msg' => 'Thêm thất bại'],203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        }
    }

    public function delete($id){
        try{
            DB::beginTransaction();
            $productInformations = $this->productInformations->find($id);
            if ($productInformations->product->user_id!=Auth()->user()->id)
                return response()->json(['msg' => 'Không phải thông tin sản phẩm của bạn'],203,
                    ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
            $productInformations->delete();
            DB::commit();
            return response()->json(['msg' => 'Xóa thành công'],200,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        } catch (\Exception $exception){
            DB::rollBack();
            return response()->json(['msg' => 'Xóa thất bại'],203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        }
    }
}
