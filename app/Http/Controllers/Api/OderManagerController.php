<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Oder;
use App\Models\Product;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class OderManagerController extends Controller
{
    private $oder;
    private $uer;
    private $product;

    public function __construct(Oder $oder, User $user, Product $product)
    {
        $this->oder = $oder;
        $this->uer = $user;
        $this->product = $product;
    }

    public function get_oder_user()
    {
        $arr = array();
        $products = $this->product->where('user_id', Auth::id())->get();
        foreach ($this->oder->all() as $itemOder) {
            foreach ($products as $product) {
                if ($itemOder->product_id == $product->id) {
                    $itemOder->image = $product->image;
                    $itemOder->name_product = $product->name;
                    $itemOder->price = $product->price;
                    $arr[] = $itemOder;
                }
            }
        }
        return $arr;
    }
	public function get_oder_detial($id)
    {
    	$oder = $this->oder->find($id);
        $products = $this->product->all();
      	foreach ($products as $product) {
        	if ($oder->product_id == $product->id) {
          		$oder->image = $product->image;
          		$oder->name_product = $product->name;
          		$oder->price = $product->price;
        	}
      	}
      	return $oder;
    }
    public function active_oder($id)
    {
        $oder = $this->oder->find($id);
        $product = $this->product->find($oder->product_id);
        $day = Carbon::now()->addDay(24);
        $oder->update([
            'status' => 'Đã đặt cọc, chờ thanh toán',
            'end_time' => $day,
        ]);
        $quantity = $product->quantity;
        $product->update([
            'quantity' => $quantity - 1
        ]);
        return response()->json(['msg' => 'Xác nhận đặt cọc thành công'], 200,
            ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
    }

    public function code_bill(Request $request, $id)
    {
        try {
            DB::beginTransaction();
            $oder = $this->oder->find($id);
            $oder->update([
                'code_bill_oder' => $request->code_bill_oder
            ]);
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
            $oder->update([
                'code_bill_payment' => $request->code_bill_payment
            ]);
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

    public function payment_oder($id)
    {
        $oder = $this->oder->find($id);
        $day = Carbon::now()->addDay(24);
        $oder->update([
            'status' => 'Đã thanh toán',
            'end_time' => null,
        ]);
        return response()->json(['msg' => 'Xác nhận thanh toán thành công'], 200,
            ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
    }

    public function delete_oder($id)
    {
        $oder = $this->oder->find($id);
        $product = $this->product->find($oder->product_id);
        $quantity = $product->$product;
        if ($oder->status = 'Đang chờ đặt cọc') {
            $product->update([
                'quantity' => $quantity + 1
            ]);
        }
        if ($oder->status = 'Đang chờ thanh toán') {
            if ($quantity == -1) {
                $product->update([
                    'quantity' => 1
                ]);
            } else {
                $product->update([
                    'quantity' => $quantity + 1
                ]);
            }
        }
        $oder->delete();
        return response()->json(['msg' => 'Hủy thành công'], 200,
            ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
    }
}
