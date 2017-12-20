<?php
/**
 * Created by PhpStorm.
 * User: Hzg
 * Date: 17/12/19
 * Time: 下午5:17
 */
namespace app\admin\controller;
use think\Controller;
use app\Admin\model\Users;
class Admin extends Controller{
    public function admin_role(){
        return view();
    }

    public function admin_cate(){
        return view();
    }

    public function admin_rule(){
        return view();
    }

    public function  admin_list(){
        $user = new Users;
        $data[0] = $user->gettable();
        $this->assign('list',$data[0]);
        return view();
    }

}