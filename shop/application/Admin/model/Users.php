<?php
/**
 * Created by PhpStorm.
 * User: Hzg
 * Date: 17/12/19
 * Time: 下午10:03
 */
namespace app\Admin\model;

use think\Model;
use think\Db;
class Users extends Model
{
    /**
     * 登录界面
     * @param $v
     * @param $k
     * @return array|false|\PDOStatement|string|Model
     */
    public function getUserInfo($v,$k){
        $data [$k] = $v;
        return db('admin')->where('name',$v)->find();
    }

    /**
     * 管理员管理/管理员列表
     * @return mixed
     */
    public function gettable(){
        return db::query("select * from jry_admin where id in (1,2)");
    }

    /**
     * 会员管理/会员列表
     * @return array|false|\PDOStatement|string|Model
     */
    public function getuser(){
        return db::query("select * from jry_user where id in (1,2)");
    }

    public function a(){

    }

}