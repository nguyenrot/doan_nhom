<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Oder;
use App\Models\Product;
use Illuminate\Support\Facades\Auth;

class StatisticalController extends Controller
{
    private $oder;
    private $product;

    public function __construct(Oder $oder, Product $product)
    {
        $this->oder = $oder;
        $this->product = $product;
    }
  
  	public function get_statistical()
    {
    	$arr = array();
        $products = $this->product->where('user_id', Auth::id())->get();
      	$total = 0;
      	$number = 0;
        foreach ($this->oder->where('status','Đã thanh toán')->get() as $itemOder) {
            foreach ($products as $product) {
                if ($itemOder->product_id == $product->id) {
                    $itemOder->image = $product->image;
                    $itemOder->name_product = $product->name;
                    $itemOder->price = $product->price;
                  	$total += doubleval($product->price);
                  	$number++;
                    $arr[] = $itemOder;
                }
            }
        }
      	$arr[] = ['total' => $total,'number'=>$number];
        return $arr;
    }
  
  	public function get_statistical_all()
    {
    	$arr = array();
        $products = $this->product->all();
      	$total = 0;
      	$number = 0;
        foreach ($this->oder->where('status','Đã thanh toán')->get() as $itemOder) {
            foreach ($products as $product) {
                if ($itemOder->product_id == $product->id) {
                    $itemOder->image = $product->image;
                    $itemOder->name_product = $product->name;
                    $itemOder->price = $product->price;
                  	$total += doubleval($product->price);
                  	$number++;
                    $arr[] = $itemOder;
                }
            }
        }
      	$arr[] = ['total' => $total,'number'=>$number];
        return $arr;
    }
  
  	public function post_statistical(Request $request)
    {
    	$arr = array();
        $products = $this->product->where('user_id', Auth::id())->get();
      	$total = 0;
      	$number = 0;
        foreach ($this->oder->where('status','Đã thanh toán')->whereMonth('updated_at',$request->month)->whereYear('updated_at',$request->year)->get() as $itemOder) {
            foreach ($products as $product) {
                if ($itemOder->product_id == $product->id) {
                    $itemOder->image = $product->image;
                    $itemOder->name_product = $product->name;
                    $itemOder->price = $product->price;
                  	$total += doubleval($product->price);
                  	$number++;
                    $arr[] = $itemOder;
                }
            }
        }
      	$arr[] = ['total' => $total,'number'=>$number];
        return $arr;
    }
  	public function post_statistical_all(Request $request)
    {
      	$arr = array();
        $products = $this->product->all();
      	$total = 0;
      	$number = 0;
        foreach ($this->oder->where('status','Đã thanh toán')->whereMonth('updated_at',$request->month)->whereYear('updated_at',$request->year)->get() as $itemOder) {
            foreach ($products as $product) {
                if ($itemOder->product_id == $product->id) {
                    $itemOder->image = $product->image;
                    $itemOder->name_product = $product->name;
                    $itemOder->price = $product->price;
                  	$total += doubleval($product->price);
                  	$number++;
                    $arr[] = $itemOder;
                }
            }
        }
      	$arr[] = ['total' => $total,'number'=>$number];
        return $arr;
    }
}
