<?php
namespace app\admin\controller;
use think\Controller;
header('content-type:text/html;charset=utf-8');
class Index
{
//    public function index(){
//        return view();
//        $this->fetch();
//    }

    public function index(){
        return view('index');
    }

    public function welcome(){
        return view();
    }

    public function user_list(){
        return view();
    }

    public function user_del(){
        return view();
    }

    public function order_list(){
        return view();
    }

    public function admin_list(){
        return view();
    }

//    public function admin_role(){
//        return view();
//    }
}
