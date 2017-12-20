<?php
namespace app\Home\controller;
header('content-type:text/html;charset=utf-8');
class Index
{
    public function index(){
        return view();
//        $this->fetch();
    }

    public function admin(){
        return view();
    }
}
