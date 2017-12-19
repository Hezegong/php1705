<?php
/**
 * Created by PhpStorm.
 * User: Hzg
 * Date: 17/12/19
 * Time: 下午2:17
 */

// [ 应用入口文件 ]

// 定义应用目录
define('APP_PATH', __DIR__ . '/../application/');
//默认访问Admin模块
define('BIND_MODULE','admin');
// 加载框架引导文件
require __DIR__ . '/../thinkphp/start.php';
