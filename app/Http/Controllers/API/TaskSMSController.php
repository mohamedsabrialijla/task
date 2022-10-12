<?php

namespace App\Http\Controllers\API;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use App\Models\User;
use App\Models\Task;
use Carbon\Carbon;

use DB;



class TaskSMSController extends Controller
{
  
     public function __construct() {
    }

    public function image_extensions(){
        return array('jpg','png','jpeg','gif','bmp');
    }

   

    public function getAll(Request $request)
    {
        $search = $request->search;
        if(isset($request->search) && $request->search != '' ){
            $items = Task::with('usern')->whereHas('usern',function($q)use($search){
        $q->where('name', 'like', '%'.$search.'%'); 
        })->get();

        }else{
          $items = Task::get();  
        }
        

        $items=$items->groupBy(function ($item) {
           return Carbon::parse($item['created_at'])->format('F');
        });


        $message ="success return";
        return mainResponse(true, $message , $items, 200, 'items','');
    }

    

}