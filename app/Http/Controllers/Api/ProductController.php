<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Favorite;
use App\Models\Product;
use App\Models\Category;
use App\Models\ProductImage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use PHPUnit\Exception;

class ProductController extends Controller
{
    private $product;
    private $productImage;
    private $favorite;
    private $category;

    public function __construct(Product $product, ProductImage $productImage, Favorite $favorite, Category $category)
    {
        $this->product = $product;
        $this->productImage = $productImage;
        $this->favorite = $favorite;
        $this->category = $category;
    }

    public function get_product_category($id)
    {
        $category = $this->category->find($id);
        $products = $this->product->where('category_id', $id)->whereNotIn('quantity',[-1])->get();
//      	return response()->json([$category,$product], 200,
//                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        $arr = array();
        foreach ($products as $product) {
            $product->category_name = $category->name;
            $arr[] = $product;
        }
        return $arr;
    }

    public function get_product_location($location)
    {
        $products = $this->product
            ->whereNotIn('quantity',[-1])
            ->where('city', 'LIKE', "%{$location}%")
            ->orWhere('district', 'LIKE', "%{$location}%")
            ->orWhere('ward', 'LIKE', "%{$location}%")
            ->get();
        $arr = array();
        $categorys = $this->category->all();
        foreach ($products as $product) {
            foreach ($categorys as $category) {
                if ($product->category_id == $category->id) {
                    $product->category_name = $category->name;
                    $arr[] = $product;
                    break;
                }
            }
        }
        return $arr;
    }

    public function get_all()
    {
        $products = $this->product->whereNotIn('quantity',[-1])->get();
        $arr = array();
        $categorys = $this->category->all();
        foreach ($products as $product) {
            foreach ($categorys as $category) {
                if ($product->category_id == $category->id) {
                    $product->category_name = $category->name;
                    $arr[] = $product;
                    break;
                }
            }
        }
        return $arr;
    }

    public function get_product_user($id)
    {
        $products = $this->product->where('user_id', $id)->whereNotIn('quantity',[-1])->get();
        $arr = array();
        $categorys = $this->category->all();
        foreach ($products as $product) {
            foreach ($categorys as $category) {
                if ($product->category_id == $category->id) {
                    $product->category_name = $category->name;
                    $arr[] = $product;
                    break;
                }
            }
        }
        return $arr;
    }

    public function get_product($id)
    {
        //$products = $this->product->where('id',$id)->whereNotIn('quantity',[-1])->get();
      	$categorys = $this->category->all();
      	$product =  $this->product->find($id);
      	if ($product->quantity < 0) {
        	$product = [];
        } else {
        	$categorys = $this->category->all();
            foreach ($categorys as $category) {
                if ($product->category_id == $category->id) {
                    $product->category_name = $category->name;
                    break;
                }
            }
        }
        return $product;
    }

    public function delete($id)
    {
        try {
            DB::beginTransaction();
            $product = $this->product->find($id);
            if (Auth::user()->id != $product->user_id)
                return response()->json(['msg' => 'Không phải sản phẩm của bạn'], 203,
                    ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
            $product_image = $product->images()->get();
            foreach ($product->images()->get() as $item) {
                $item->delete();
            }
            $product->delete();
            DB::commit();
            return response()->json(['msg' => 'Xóa thành công'], 203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        } catch (Exception $exception) {
            DB::rollBack();
            return response()->json(['msg' => 'Xóa thất bại'], 203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        }
    }

    public function post(Request $request)
    {
        try {
            DB::beginTransaction();
            $data_product = [
                'name' => $request->name,
                'slug' => Str::slug($request->name),
                'description' => $request->description,
                'category_id' => $request->category_id,
                'price' => $request->price,
                'deposit_price' => $request->deposit_price,
                'deposit_time' => $request->deposit_time,
                'ward' => $request->ward,
                'district' => $request->district,
                'city' => $request->city,
                'status' => "Đang bán",
                'user_id' => Auth()->user()->id,
                'employees' => $request->employees,
                'quantity' => $request->quantity,
                'image' => $request->image,
            ];
//            if ($request->hasFile('image')) {
//                $path = $request->image->storeAS('public/product', $request->image->getClientOriginalName());
//                $get_name_image = $request->image->getClientOriginalName();
//                $name_image = current(explode('.', $get_name_image));
//                $new_image = $name_image . rand(0, 99) . '.' . $request->image->getClientOriginalExtension();
//                $request->image->move('image/product', $new_image);
//                $data_product['image'] = 'image/product/' . $new_image;
//            }
            $product = $this->product->create($data_product);
            DB::commit();
            return response()->json(["product" => $product, 'msg' => 'Thêm thành công'], 200,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message' . $exception->getMessage() . 'Line : ' . $exception->getLine());
            return response()->json(['msg' => 'Thêm thất bại'], 203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        }
    }

    public function patch(Request $request, $id)
    {
        try {
            DB::beginTransaction();
            $product = $this->product->find($id);
            if (Auth::user()->id != $product->user_id)
                return response()->json(['msg' => 'Không phải sản phẩm của bạn'], 203,
                    ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
            $product->update($request->all());
            if ($request->name) {
                $this->product->find($id)->update([
                    'slug' => Str::slug($request->name),
                ]);
            }
//            if ($request->hasFile('image')) {
//                $path = $request->image->storeAS('public/product', $request->image->getClientOriginalName());
//                $get_name_image = $request->image->getClientOriginalName();
//                $name_image = current(explode('.', $get_name_image));
//                $new_image = $name_image . rand(0, 99) . '.' . $request->image->getClientOriginalExtension();
//                $request->image->move('image/product', $new_image);
//                $data_product['image'] = 'image/product/' . $new_image;
//                $this->product->find($id)->update($data_product);
            //           }
            DB::commit();
            $product = $this->product->find($id);
            return response()->json(["category" => $product, 'msg' => 'Cập nhập thành công'], 200,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message' . $exception->getMessage() . 'Line : ' . $exception->getLine());
            return response()->json(['msg' => 'Cập nhập thất bại'], 203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        }
    }
}
