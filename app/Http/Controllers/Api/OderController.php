<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Oder;
use App\Models\Product;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Str;

class OderController extends Controller
{
    private $oder;
    private $product;

    public function __construct(Oder $oder, Product $product)
    {
        $this->oder = $oder;
        $this->product = $product;
    }

    public function get_all_oder($id)
    {
        $oder = $this->oder->where('user_id', $id)->get();
        $products = $this->product->all();
        $arr = array();
        foreach ($oder as $o) {
            foreach ($products as $product) {
                if ($o->product_id == $product->id) {
                    $o->image = $product->image;
                    $o->name_product = $product->name;
                    $o->price = $product->price;
                    $arr[] = $o;
                }
            }
        }
        return $arr;
    }

    public function get_oder($id)
    {
        $oder = $this->oder->find($id);
        $products = $this->product->all();
        if (Auth::id() != $oder->user_id) {
            return response()->json(['msg' => 'Lỗi'], 203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        } else {
            foreach ($products as $product) {
                if ($oder->product_id == $product->id) {
                    $oder->image = $product->image;
                    $oder->name_product = $product->name;
                    $oder->price = $product->price;
                }
            }
            return $oder;
        }
    }

    public function delete($id)
    {
        try {
            DB::beginTransaction();
            $oder = $this->oder->find($id);
            if (Auth::id() == $oder->user_id) {
                $oder->delete();
            } else {
                return response()->json(['msg' => 'Hủy đặt cọc thất bại'], 203,
                    ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
            }
            DB::commit();
            return response()->json(['msg' => 'Hủy đặt cọc thành công'], 200,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message' . $exception->getMessage() . 'Line : ' . $exception->getLine());
            return response()->json(['msg' => 'Hủy đặt cọc thất bại'], 203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        }
    }

    public function code_bill(Request $request, $id)
    {
        try {
            DB::beginTransaction();
            $oder = $this->oder->find($id);
            if (Auth::id() == $oder->user_id) {
                $oder->update([
                    'code_bill_oder' => $request->code_bill_oder,
                  	'note' =>  $request->note,
                ]);
            } else {
                return response()->json(['msg' => 'Gửi mã hóa đơn thất bại'], 203,
                    ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
            }
            DB::commit();
            return response()->json(['msg' => 'Gửi mã hóa đơn thành công'], 200,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message' . $exception->getMessage() . 'Line : ' . $exception->getLine());
            return response()->json(['msg' => 'Gửi mã hóa đơn thất bại'], 203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        }
    }
	public function code_bill_payment(Request $request, $id)
    {
        try {
            DB::beginTransaction();
            $oder = $this->oder->find($id);
            if (Auth::id() == $oder->user_id) {
                $oder->update([
                    'code_bill_payment' => $request->code_bill_payment
                ]);
            } else {
                return response()->json(['msg' => 'Gửi mã hóa đơn thất bại'], 203,
                    ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
            }
            DB::commit();
            return response()->json(['msg' => 'Gửi mã hóa đơn thành công'], 200,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message' . $exception->getMessage() . 'Line : ' . $exception->getLine());
            return response()->json(['msg' => 'Gửi mã hóa đơn thất bại'], 203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        }
    }

    public function post(Request $request)
    {
        try {
            DB::beginTransaction();
            $product = $this->product->find($request->product_id);
            $quantity = $product->quantity - 1;
            if ($quantity == -1) {
                $status = 'Đã có người đặt cọc';
                return response()->json(['msg' => $status], 200,
                    ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
            } else if ($quantity == 0) {
                $status = 'Đã có người đặt cọc';
                $product->update([
                    'status' => $status,
                    'quantity' => 0
                ]);
            } else {
                $product->update([
                    'quantity' => $quantity
                ]);
            }
            $deposit_time = (int)$product->deposit_time;
            $day = Carbon::now()->addDay($deposit_time);
            $oder = $this->oder->create([
                'user_id' => Auth::id(),
                'product_id' => $request->product_id,
                'status' => 'Đang chờ đặt cọc',
                'end_time' => $day,
            ]);
            DB::commit();
            return response()->json(["Oder" => $oder, 'msg' => 'Đặt cọc thành công'], 200,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message' . $exception->getMessage() . 'Line : ' . $exception->getLine());
            return response()->json(['msg' => 'Đặt cọc thất bại'], 203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        }
    }
}
