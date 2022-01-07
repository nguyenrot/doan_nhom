<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Employee;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class EmployeesController extends Controller
{
    private $employees;
    public function __construct(Employee $employee)
    {
        $this->employees = $employee;
    }

    public function get($user_id){
        return $this->employees->where('user_id',$user_id)->get();
    }
    public function get_info_employees($id){
        return $this->employees->find($id);
    }
    public function post(Request $request){
        try {
            DB::beginTransaction();
            $data = [
                'full_name'=>$request->full_name,
                'email'=>$request->email,
                'phone_number'=>$request->phone_number,
                'bank_account_number'=>$request->bank_account_number,
                'user_id'=>auth()->user()->id,
            ];
            $employees = $this->employees->create($data);
            DB::commit();
            return response()->json(["employees" => $employees, 'msg' => 'Thêm thành công'],200,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        } catch (\Exception $exception){
            Log::error('Message'.$exception->getMessage().'Line : '.$exception->getLine());
            DB::rollBack();
            return response()->json(['msg' => 'Thêm thất bại'],203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        }
    }
    public function patch(Request $request,$id){
        try{
            DB::beginTransaction();
            $employees = $this->employees->find($id);
            if ($employees->user_id!=Auth()->user()->id)
                return response()->json(['msg' => 'Không phải nhân viên của bạn'],203,
                    ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
            $employees->update($request->all());
            DB::commit();
            return response()->json(["category" => $this->employees->find($id), 'msg' => 'Thêm thành công'],200,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        }catch (\Exception $exception){
            DB::rollBack();
            Log::error('Message'.$exception->getMessage().'Line : '.$exception->getLine());
            return response()->json(['msg' => 'Cập nhập thất bại'],203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        }
    }
    public function delete($id){
        try{
            DB::beginTransaction();
            $employees = $this->employees->find($id);
            if ($employees->user_id!=Auth()->user()->id)
                return response()->json(['msg' => 'Không phải nhân viên của bạn'],203,
                    ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
            $employees->delete();
            DB::commit();
            return response()->json(['msg' => 'Xóa thành công'],200,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        } catch (\Exception $exception){
            DB::rollBack();
            Log::error('Message'.$exception->getMessage().'Line : '.$exception->getLine());
            return response()->json(['msg' => 'Xóa thất bại'],203,
                ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'], JSON_UNESCAPED_UNICODE);
        }
    }
}
