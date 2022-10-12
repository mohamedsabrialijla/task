<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    protected $tabel = 'task_sms';
    protected $fillable = ['message'];
    // protected $appends = ['user','price','month'];
    protected $appends = ['user','price','date'];
   
    public function getDateAttribute(){
        return date('d/m/Y', strtotime($this->created_at));
    }


    public function getUserAttribute(){
        return User::where('id',$this->user_id)->first();
    }

    public function getPriceAttribute(){
        $p = 0.00;
        $price = preg_replace('/[^0-9]/', '', $this->message) ;
        if(isset($price) && $price != ''){
            $p = number_format($price, 2);
        }else{
            $p = number_format(0, 2);
        }

        return $p ;
    }


    public function usern()
    {
        return $this->belongsTo(User::class,'user_id');
    }

    // public function getMonthAttribute(){
    //     $date = Carbon::createFromFormat('m/d/Y', $this->created_at);
    //     return $date->format('F');
    // }
    

    






}


