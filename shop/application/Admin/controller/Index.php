<?php
namespace app\admin\controller;
use think\Controller;
header('content-type:text/html;charset=utf-8');
class Index extends Controller
{
//    public function index(){
//        return view();
//        $this->fetch();
//    }

    public function index(){
        $this->assign('nickname',session('user_info.user')['nickname']);
        return view();
    }


    public function welcome(){
        return view();
    }

    public function order_list(){
        return view();
    }

}
