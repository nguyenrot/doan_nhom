<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Comment;
use App\Models\Product;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class CommentController extends Controller
{
    private $comment;
    private $product;
	private $uesr;
    public function __construct(Comment $comment, Product $product,User $user)
    {
        $this->comment = $comment;
        $this->product = $product;
      	$this->uesr = $user;
    }
    public function get($product_id){
        $comments = $this->comment->where('product_id',$product_id)->get();
      	$users = $this->uesr->all();
      	$arr = array();
      	foreach($comments as $comment) 
        {
        	foreach($users as $user) 
            {
				if ($comment->user_id == $user->id) {
                	$comment->user_name = $user->name;
                  	$arr[] = $comment;
                  	break;
                }
            }
        }
      	return $arr;
    }
    public function post(Request $request)
    {
        try {
            DB::beginTransaction();
            $comment = $this->comment->create([
                'user_id' => Auth::id(),
                'product_id' => $request->product_id,
                'body' => $request->body,
                'status' => 1,
            ]);
          	$comment->user_name = Auth::user()->name;
            DB::commit();
            return response()->json(["Comment" => $comment, 'msg' => 'Bình luận thành công'], 200,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        } catch (\Exception $exception) {
            DB::rollBack();
          	Log::error('Message' . $exception->getMessage() . 'Line : ' . $exception->getLine());
            return response()->json(['msg' => 'Bình luận thất bại'], 203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        }
    }
    public function delete($id){
        try {
            DB::beginTransaction();
            $comment = $this->comment->find($id);
            if ($comment->user_id != Auth::id()) {
                return response()->json(['msg' => 'Xóa thất bại'], 203,
                    ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
            }
            $comment->delete();
            DB::commit();
            return response()->json(['msg' => 'Xóa thành công'], 203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message' . $exception->getMessage() . 'Line : ' . $exception->getLine());
            return response()->json(['msg' => 'Xóa thất bại'], 203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        }
    }
}
