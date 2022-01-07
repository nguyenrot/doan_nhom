<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    private $user;

    public function __construct(User $user)
    {
        $this->user = $user;
    }

    public function get()
    {
        return $this->user->all();
    }

    public function get_user($id)
    {
        return $this->user->find($id);
    }

    public function active_user($id)
    {
        $user = $this->user->find($id);
        if ($user->active == 1) {
            $user->active = 0;
            $user->save();
            return response()->json(['msg' => 'Khóa người dùng thành công'], 203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        } else {
            $user->active = 1;
            $user->save();
            return response()->json(['msg' => 'Mở khóa người dùng thành công'], 203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        }
    }
}
