<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Log;

class CategoryController extends Controller
{
    private $category;

    function __construct(Category $category)
    {
        $this->category = $category;
    }

    function index()
    {
        return response()->json($this->category->all(), 200,
            ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
    }

    function get($id)
    {
        $category = $this->category->find($id);
        return response()->json($category, 200,
            ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
    }

    function patch(Request $request, $id)
    {
        try {
            DB::beginTransaction();
            $category = $this->category->find($id);
            $category->update($request->all());
            if ($request->name) {
                $this->category->find($id)->update([
                    'slug' => Str::slug($request->name),
                ]);
            }
//            if ($request->hasFile('image')) {
//                $path = $request->image->storeAS('public/category', $request->image->getClientOriginalName());
//            }
//           if (!empty($path)) {
//                $data['image'] = Storage::url($path);
//                $this->category->find($id)->update($data);
//            }
            DB::commit();
            return response()->json(["category" => $this->category->find($id), 'msg' => 'Cập nhập thành công'], 200,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        } catch (\Exception $exception) {
            DB::rollBack();
            return response()->json(['msg' => 'Cập nhập thất bại'], 203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        }
    }

    function delete($id)
    {
        try {
            DB::beginTransaction();
            $category = $this->category->find($id);
            if (empty($category))
                return response()->json(['msg' => 'Xóa thất bại'], 203,
                    ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
            $category->delete();
            DB::commit();
            return response()->json(['msg' => 'Xóa thành công'], 200,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        } catch (\Exception $exception) {
            DB::rollBack();
            return response()->json(['msg' => 'Xóa thất bại'], 203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        }
    }

    function create(Request $request)
    {
        try {
            DB::beginTransaction();
            $data = [
                'name' => $request->name,
                'slug' => Str::slug($request->name),
              	'image' => $request->image,
            ];
//            if ($request->hasFile('image')) {
//                $path = $request->image->storeAS('public/category', $request->image->getClientOriginalName());
//                $get_name_image = $request->image->getClientOriginalName();
//                $name_image = current(explode('.', $get_name_image));
//               $new_image = $name_image . rand(0, 99) . '.' . $request->image->getClientOriginalExtension();
//                $request->image->move('image/category', $new_image);
//               $data['image'] = '/image/category/' . $new_image;
//            }
            $category = $this->category->create($data);
            DB::commit();
            return response()->json(["category" => $category, 'msg' => 'Thêm thành công'], 200,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        } catch (\Exception $exception) {
            DB::rollBack();
          	Log::error('Message'.$exception->getMessage().'Line : '.$exception->getLine());
            return response()->json(['msg' => 'Thêm thất bại'], 203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        }
    }

}
