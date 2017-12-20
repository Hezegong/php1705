<?php
/**
 * Created by PhpStorm.
 * User: Hzg
 * Date: 17/12/19
 * Time: 上午10:10
 */

namespace app\Admin\controller;
use think\Controller;
use \think\View;
use app\Admin\model\User;
class Login extends Controller
{
    public function login(){

        if(session('user_info')){
            $this->redirect('Index/index');
        }

        //get请求
        if (request()->isGet()){
            //展示模板
            $this->assign('login_error',session('login_error'));
            return view();
        }
        if (request()->isPost()){
            $user = input('post.username/s');
            $pwd = input('post.password/s');
            if (!$user){
                exit('用户名不能为空!');
            }
            if (!$pwd){
                exit('密码不能为空！');
            }
            //调用方法检查账户密码
            $this->checkLogin($user,$pwd);
            return view();
        }
    }

    private function login_error_redirect($error,$url = 'Login/login',$param = [],$code = 302){
        session('login_error',$error);
        $this->redirect($url);
    }

    //检查账户密码
    public function checkLogin($user,$pwd){
        $User = new User;//实例化User对象
        $userInfo = $User->getUserInfo($user,$pwd);

        (!$userInfo) && $this->login_error_redirect('对不起,您的账号不存在!');
        $datapwd = $userInfo['password'];
        $truepwd = md5($pwd . $userInfo['salt']);

        ($truepwd !== $datapwd) && $this->login_error_redirect('对不起，您的密码不正确！');
        $user_info['user'] = [
          'uid'=>$userInfo['id'],
          'nickname'=> $userInfo['name']
        ];
        session('user_info',$user_info);
        $this->redirect('Index/index');
    }

    public function login_out(){
        session('user_info',null);
        session('login_error',null);
        session(null);
        $this->redirect('Login/login');
    }
}