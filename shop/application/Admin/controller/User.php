<?php
/**
 * Created by PhpStorm.
 * User: Hzg
 * Date: 17/12/19
 * Time: 下午2:46
 */
namespace app\admin\controller;
use think\Controller;
use app\Admin\model\Users;
class User extends Controller{

    public function  user_list(){
        $user = new Users;
        $data[0] = $user->getuser();
        $this->assign('list',$data[0]);
        return view();
    }


    /**
     * 添加会员
     */
    public function User_Save(){
        $data = [];
        $data['id'] = request()->isPost('id/d');
        $data['username'] = request()->isPost('username/s');
        $data['phone'] = request()->isPost('phone/d');
        $data['email'] = request()->isPost('email/s');
        $data['address'] = request()->isPost('address/s');
        $data['reg_time'] = request()->isPost('reg_time/s');
        $result = Loader::model('Users');
        $this->ajaxReturn($result);
    }


    public function user_del(){
        return view();
    }

    public function member_add(){
        return view();
    }

    public function member_edit(){
        return view();
    }

    public function member_password(){
        return view();
    }
}

