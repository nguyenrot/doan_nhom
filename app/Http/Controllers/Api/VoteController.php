<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Vote;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class VoteController extends Controller
{
    private $vote;
    private $user;

    public function __construct(Vote $vote, User $user)
    {
        $this->vote = $vote;
        $this->user = $user;
    }

    public function get($user_id)
    {
        return $this->vote->where("user_vote",$user_id)->get();
    }

    public function post(Request $request)
    {
        try {
            DB::beginTransaction();
            if (count($this->vote->where('user_id',Auth::id())->where('user_vote',$request->user_vote)->get())) {
                return response()->json(['msg' => 'Đã đánh giá'], 203,
                    ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
            }
            $vote = $this->vote->create([
                'user_id' => Auth::id(),
                'user_vote' => $request->user_vote,
                'rating' => $request->rating,
            ]);
            DB::commit();
            return response()->json(["Vote" => $vote, 'msg' => 'Đánh giá thành công'], 200,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message' . $exception->getMessage() . 'Line : ' . $exception->getLine());
            return response()->json(['msg' => 'Đánh giá thất bại'], 203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        }
    }

    public function delete($id)
    {
        try {
            DB::beginTransaction();
            $vote = $this->vote->find($id);
            if ($vote->user_id != Auth::id()) {
                return response()->json(['msg' => 'Xóa thất bại'], 203,
                    ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
            }
            $vote->delete();
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
