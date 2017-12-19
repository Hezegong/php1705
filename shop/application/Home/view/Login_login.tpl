
<!doctype html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>登录- Z商城</title>
    <meta name="keywords" content="登录- Z商城"/>
    <meta name="description" content="登录- Z商城"/>
    <link href="/static/css/login.css" rel="stylesheet" type="text/css" />

    <script src="/static/js/jquery-1.8.1.js"  type="text/javascript"></script>
    <script src="/static/js/jquery-md5.js"  type="text/javascript"></script>
</head>

<body class="login-index">
<div class="wrapper">
    <div class="header clearfix">
        <!-- register-bar add by hanjw 2014-6-24-->
        <div class="register-bar"><a href="/index.php?c=Default&a=Register">立即注册</a>还没有Z商城账号？</div>
        <!-- //register-bar add by hanjw 2014-6-24-->
        <div class="logo">
            <!-- modify by hanjw 2014-6-24 -->
            <a title="Z商城" href="http://www.zol.com"><img width="130" height="60" title="Z商城" alt="Z商城" src="http://icon.zol-img.com.cn/newshop/shop/index/logo_130x60.png"><p>中关村在线旗下网上商城</p></a>
            <!-- modify by hanjw 2014-6-24 --> </div>
    </div>

    <form id="J_loginForm" action="javascript:void(0)">
        <div class="login-wrap clearfix">
            <div class="ad-div">
                <div>
                    <a href="http://www.zol.com/" target="_blank"><img width="520" height="350" src="https://login.zol.com/image/ad2_1.jpg" alt="" /></a>
                </div>
            </div>
            <div class="login-layer">
                <div class="login-head clearfix">
                    <h3 class="curLogin">登录Z商城</h3>
                    <h3 >商家登录</h3>
                </div>
                <!-- 登录Z商城 -->
                <div class="login-select" >
                    <div class="login-content" id="J_login_common">
                        <div class="login-wrong-tips" id="J_login-wrong-tips" style="display:none;">
                            -
                        </div>
                        <div class="form-item username">
                            <input type="text" value="" autocomplete="off" placeholder="手机号/邮箱/用户名" class="text" id="J_loginUser" name="zolShopUserName" maxlength="100" />
                            <i class="remove" style="display:none;"></i>
                            <ul style="display:none;" class="account-list" id="J_accountList">
                            </ul>
                        </div>
                        <div class="form-item">
                            <input type="password" autocomplete="off" placeholder="密码" class="text" id="J_loginPsw" maxlength="20" />
                            <i class="remove" style="display:none;"></i>
                            <span class="case-tips" id="J_loginCapsLock">大小写锁定已打开<i class="ico"></i></span>
                        </div>
                        <div class="form-other clearfix">
                            <label class="autologon"></label>
                            <a href="javascript:void(0)" class="otherLogin-bar mobileLogin-bar" rel="J_phone">手机动态码登录</a>
                            <a target="_blank" href="http://my.zol.com.cn/index.php?c=getPassword" class="forget-password">忘记密码？</a>
                        </div>
                        <input type="hidden" value="1" name="J_login_type" id="J_login_type" />
                        <input type="button" value="登 录" class="login-layer-btn" id="J_loginBtn" />
                        <span style="display:none;" class="submit-loading" id="J_loginingBtn">正在登录...</span>
                    </div>
                    <div class="login-content mobileLogin-content" id="J_login_mobile" style="display:none;">
                        <div class="login-wrong-tips" id="J_login-mobile-wrong-tips" style="display:none;">
                            -
                        </div>
                        <!-- add by hanjw 2014-6-24 -->
                        <div class="form-item ">
                            <input type="text" autocomplete="off" placeholder="手机号" class="text" id="J_login_mobile_number" name="J_login_mobile_number" />
                        </div>
                        <div class="form-item captcha-item">
                            <input type="text" value="" autocomplete="off" placeholder="图片验证码" class="text" id="J_login_mobile_picCode" name="picCode" maxlength="5" />
                            <input name="J_login_mobile_token" id="J_login_mobile_token" type="hidden" value="683ceb77c986122788e92bd752f848a9" />
                            <img width="100" height="40" src="https://service.zol.com.cn/captcha.php?token=683ceb77c986122788e92bd752f848a9&amp;numCnt=5&amp;widht=98&amp;height=38" alt="图片验证码" id="J_login_mobile_img" />
                        </div>
                        <div class="form-item phone-number">
                            <input type="text" autocomplete="off" placeholder="短信验证码" class="text" id="J_login_mobile_code" name="J_login_mobile_code" />
                            <input name="J_login_send_button" type="button" value="发送验证码" class="btn" id="J_login_send_button" />
                            <span class="captcha-loading" id="J_login_send_wait" style="display: none">100秒后重新获取</span>
                        </div>
                        <!-- //add by hanjw 2014-6-24 -->
                        <input type="button" value="登 录" class="login-layer-btn" id="J_loginBtn_mobile" />
                        <span style="display:none;" class="submit-loading" id="J_loginingBtn_mobie">正在登录...</span>
                    </div>
                    <div class="collaborate clearfix">
                        <div class="xian"></div>
                        <p>合作账号登录</p>
                        <div class="xian"></div>
                    </div>
                    <div class="login-foot clearfix">
                        <a target="_blank" class="weixin" href="http://service.zol.com.cn/user/api/weixin/jump.php?backurl=http%3A%2F%2Fwww.zol.com%2F">用微博账号登录</a>
                        <a target="_blank" class="sina" href="http://service.zol.com.cn/user/api/sina/jump.php?comeshop=1&amp;backurl=http%3A%2F%2Fwww.zol.com%2F">用微博账号登录</a>
                        <a target="_blank" class="qq" href="http://service.zol.com.cn/user/api/qq/libs/oauth/redirect_to_login.php?comeshop=1&amp;backurl=http%3A%2F%2Fwww.zol.com%2F">用QQ账号登录</a>
                        <a target="_blank" class="alipay" href="http://tuan.zol.com/userBinding/alipay/alipay.auth.authorize_php_gb/alipay_auth_authorize.php?fromUrl=http%3A%2F%2Fwww.zol.com%2F">用支付宝账号登录</a>
                        <a target="_blank" class="baidu" href="http://service.zol.com.cn/user/api/baidu/jump.php?comeshop=1&amp;backurl=http%3A%2F%2Fwww.zol.com%2F">用百度账号</a>
                    </div>
                </div>
                <!-- 商家登录 -->
                <div class="login-select" style="display:none;">
                    <div class="login-content" id="J_login_common">
                        <div class="login-wrong-tips" id="J_login-wrong-tips-merchant" style="display:none;">
                            -
                        </div>
                        <div class="form-item username">
                            <input type="text" value="" autocomplete="off" placeholder="用户名" class="text" id="J_loginUser_Merchant" name="MerchantName" maxlength="100" />
                            <i class="remove" style="display:none;"></i>
                            <ul style="display:none;" class="account-list" id="J_accountList">
                            </ul>
                        </div>
                        <div class="form-item">
                            <input type="password" autocomplete="off" placeholder="密码" class="text" id="J_loginPsw_Merchant" maxlength="20" />
                            <i class="remove" style="display:none;"></i>
                            <span class="case-tips" id="J_loginCapsLock">大小写锁定已打开<i class="ico"></i></span>
                        </div>
                        <div class="form-other clearfix">
                            <label class="autologon"></label>
                            <a target="_blank" href="http://dealer.zol.com.cn/merchant_get_pwd.php" class="forget-password">忘记密码？</a>
                        </div>
                        <input type="hidden" value="1" name="J_login_type_Merchant" id="J_login_type_Merchant" />
                        <input type="button" value="登 录" class="login-layer-btn" id="J_loginBtn_Merchant" />
                        <span style="display:none;" class="submit-loading" id="J_loginingBtn_Merchant">正在登录...</span>
                    </div>
                    <div class="login-content mobileLogin-content" id="J_login_mobile" style="display:none;">
                        <div class="login-wrong-tips" id="J_login-mobile-wrong-tips" style="display:none;">
                            -
                        </div>
                        <!-- add by hanjw 2014-6-24 -->
                        <div class="form-item ">
                            <input type="text" autocomplete="off" placeholder="手机号" class="text" id="J_login_mobile_number" name="J_login_mobile_number" />
                        </div>
                        <div class="form-item captcha-item">
                            <input type="text" value="" autocomplete="off" placeholder="图片验证码" class="text" id="J_login_mobile_picCode" name="picCode" maxlength="5" />
                            <input name="J_login_mobile_token" id="J_login_mobile_token" type="hidden" value="683ceb77c986122788e92bd752f848a9" />
                            <img width="100" height="40" src="https://service.zol.com.cn/captcha.php?token=683ceb77c986122788e92bd752f848a9&amp;numCnt=5&amp;widht=98&amp;height=38" alt="图片验证码" id="J_login_mobile_img" />
                        </div>
                        <div class="form-item phone-number">
                            <input type="text" autocomplete="off" placeholder="短信验证码" class="text" id="J_login_mobile_code" name="J_login_mobile_code" />
                            <input name="J_login_send_button" type="button" value="发送验证码" class="btn" id="J_login_send_button" />
                            <span class="captcha-loading" id="J_login_send_wait" style="display: none">100秒后重新获取</span>
                        </div>
                        <!-- //add by hanjw 2014-6-24 -->
                        <input type="button" value="登 录" class="login-layer-btn" id="J_loginBtn_mobile" />
                        <span style="display:none;" class="submit-loading" id="J_loginingBtn_mobie">正在登录...</span>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
<!--        <div class="login-safe-tip" id="chgpwd_changePwdWindowDiv" style="display:none;">
            <div class="login-safe-bg"></div>
            <div class="login-safe-box" id="loginSafeBox">
                <div class="login-safe-close">close</div>
                <div class="login-safe-title">温馨提示</div>
                <div class="login-safe-notice"><i></i><span>应国家相关法律要求，自2017年6月1日起使用信息发布、即时通讯等互联网服务需进行身份信息验证。为保障您对相关服务功能的正常使用，建议您尽快完成手机号码验证，感谢您的理解和支持！</span></div>
                <div class="login-safe-con" id="chgpwd_changePwdContentDiv">
                        <div class="login-safe-pwd login-safe-bind"><em>手机号码</em>
                                <input class="login-safe-text" type="text" value="" id="bind_keyword" placeholder="请输入手机号码">
                                <input class="login-safe-sendcode" type="button" id="bind_sendCode" value="发送验证码">
                                <span class="login-safe-sendcode-hide">验证码已发送！</span>
                                <p id="bind_keywordError" class="login-safe-pwdnotice" style="display: none;">手机号不能为空</p>
                        </div>
                        <div class="login-safe-pwd login-safe-bind login-safe-bind1"><em>验证码</em>
                                <input class="login-safe-code1" type="text" value="" id="bind_code" placeholder="验证码" maxlength="6">
                                <span class="login-safe-codenotice"></span></div>
                        <input class="login-safe-btn login-safe-btn-next1" id="bind_nextBtn" type="button" value="确定">
                </div>
            </div>
        </div>-->
<div class="footer">
    <div class="wrapper clearfix">
        <div class="about"><a href="http://www.rongroad.com" target="_blank">关于Z商城</a>|<a href="http://www.rongroad.com" target="_blank">联系我们</a>|<a href="http://help.zol.com" target="_blank">帮助中心</a></div>
        <div class="copyright">&copy;<script type="text/javascript">var yearStr;
                now = new Date();
                yearStr = now.getFullYear();
                document.write(yearStr);</script>. 中关村在线 版权所有</div>
    </div>
</div>
<script language="JavaScript" src="/static/js/pv.js" type="text/javascript"></script>
<script type="text/javascript">
    var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
    document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F7daf617aaf843f0f55a422b00d7de1e7' type='text/javascript'%3E%3C/script%3E"));
</script>         <div class="layer" style="display:none;" id="chgpwd_changePwdWindowDiv">
    <div class="layer-hd">
        <h5 class="tl">提示</h5>
        <span class="close">×</span>
    </div>
    <div class="layer-con">
        <p class="explain">应国家相关法律要求，自2017年6月1日起使用信息发布、即时通讯等互联网服务需进行身份信息验证。为保障相关服务功能正常使用，建议您尽快完成手机号验证，感谢您的理解和支持！</p>
        <div class="layer-opertion">
            <span class="cancel">取消</span>
            <span class="confirm" id="validate">去验证</span>
        </div>
    </div>
</div>
<script>
    var LoginBtn = 0

    $(function(){

        // Login Tab
        var tabChange = {
            tabs: function(ele){
                // ele.lis.hide();
                // ele.lis.eq(0).show();
                var len = ele.abtns.length;
                function changes(){
                    var index = $(this).index();
                    number = index;
                    if( number == len - 1 ) {
                        $(this).addClass("curLogin").siblings().removeClass("curLogin");
                    }else{
                        $(this).addClass("curLogin").siblings().removeClass("curLogin");
                    }
                    ele.lis.hide();
                    ele.lis.eq(index).show();

                    LoginBtn = index
                }
                ele.abtns.click(changes);
            },
            init: function(ele){
                tabChange.tabs(ele)
            }
        }

        var domEleTab = {
            abtns: $('.login-head > h3'),
            lis: $('.login-select')
        };
        tabChange.init(domEleTab);
    });
</script>
<script>
    $(function() {

        var callBackUrl = "http://www.zol.com";
        var baseUrl    = "https://login.zol.com/";
        var zolBaseUrl = "https://service.zol.com.cn";
        var MerchantUrl = "http://maijia.zol.com";

        var userAgent  = window.navigator.userAgent.toLowerCase();
        if (navigator.userAgent.indexOf("MSIE") && ("6.0" == $.browser.version)){
            zolBaseUrl = "http://service.zol.com.cn";
        }

        function captchaPhone(){
            var curtime = new Date().getTime();
            var numCnt  = 5;
            var url     = zolBaseUrl + "/captcha.php?token="+curtime+'&numCnt='+numCnt + '&width=98&height=38';
            $("#J_login_mobile_img").attr("src", url);
            $("#J_login_mobile_token").val(curtime);
            return false;
        }

        $("#J_login_mobile_img").click(function(){
            captchaPhone();
        });

        // 登录切换
        $(".otherLogin-bar").bind('click', function(){
            var rel = $(this).attr("rel");
            if ('J_phone' == rel){
                $(this).removeClass("mobileLogin-bar").attr("rel", "J_common").html("普通方式登录");
                $("#J_login_common").hide();
                $("#J_login_mobile").show();
                $("#J_login_type").val(2);
            }else{
                $(this).addClass("mobileLogin-bar").attr("rel", "J_phone").html("手机动态码登录");
                $("#J_login_common").show();
                $("#J_login_mobile").hide();
                $("#J_login_type").val(1);
            }
        });

        // 选中加红色边框
        $(":input[name != J_login_send_button]").focus(function(){
            $(this).parent().addClass("focus");
        }).blur(function(){
            $(this).parent().removeClass("focus");
        })

        // 手机号验证
        var checkMobile = function (mobile){
            var flag = false;
            if (mobile){
                var regPartton = new RegExp(/1[3-8]+\d{9}/);
                if (regPartton.test(mobile)){
                    flag = true;
                }
            }

            return flag;
        }

        // 发送验证码倒计时时间
        var timeout         = null;
        var countDownNumber = 100;
        var userMobileCountDown = function (){
            $("#J_login_send_button").hide();
            countDownNumber--;
            $('#J_login_send_wait').html(countDownNumber + '秒后重新获取').show();
            if (!countDownNumber){
                countDownNumber = 100;
                clearTimeout(timeout);
                $("#J_login_send_wait").hide();
                $("#J_login_send_button").show();
            }else{
                timeout = setTimeout(userMobileCountDown, 1000);
            }
        }

        // 发送验证码
        $("#J_login_send_button").bind('click', function(){
            var mobile = $("#J_login_mobile_number").val();
            if ('' == mobile){
                $("#J_login-mobile-wrong-tips").html("请填写手机号").show();
                return false;
            }

            if (!checkMobile(mobile)){
                $("#J_login-mobile-wrong-tips").html("请填写正确的手机号").show();
                return false;
            }

            var picCode = $("#J_login_mobile_picCode").val();
            if ('' == picCode){
                $("#J_login-mobile-wrong-tips").html("请填写图片验证码").show();
                return false;
            }
            var picToken = $("#J_login_mobile_token").val();

            // 请求验证码
            var url = baseUrl + "/index.php?a=SendPhoneCode&callback=?&t="+Math.random();
            $.getJSON(
                url,
                    {mobile:mobile, picCode:picCode, picToken:picToken},
                function(data){
                    if (data.flag){
                        $("#J_login-mobile-wrong-tips").hide();
                        setTimeout(userMobileCountDown, 1000);
                    }else{
                        captchaPhone();
                        $("#J_login-mobile-wrong-tips").html(data.msg).show();
                    }
                }
            );
            return false;
        });

        // 普通登录按钮切换
        var userLoginBtn = function(loginType) {
            if ('none' == loginType) {
                $("#J_loginingBtn").show();
                $("#J_loginBtn").hide();
            } else {
                $("#J_loginingBtn").hide();
                $("#J_loginBtn").show();
            }
        }
        // 商家登录按钮切换
        var MerchantLoginBtn = function(loginType) {
            if ('none' == loginType) {
                $("#J_loginingBtn_Merchant").show();
                $("#J_loginBtn_Merchant").hide();
            } else {
                $("#J_loginingBtn_Merchant").hide();
                $("#J_loginBtn_Merchant").show();
            }
        }

        // 手机号登录按钮切换
        var userMobileLoginBtn = function (loginType){
            if ('none' == loginType) {
                $("#J_loginingBtn_mobie").show();
                $("#J_loginBtn_mobile").hide();
            } else {
                $("#J_loginingBtn_mobie").hide();
                $("#J_loginBtn_mobile").show();
            }
        }

        // 检测登录名是邮箱提示
        $("#J_loginUser").bind("keyup", function() {
            var email = $(this).val();
            if (email) {
                var indexNumber = email.indexOf("@");
                if (indexNumber > 0) {
                    var emailArr = new Array("qq.com", "163.com", "gmail.com", "126.com", "sina.com", "hotmail.com");
                    var emailList = '';

                    var number = emailArr.length;
                    var emailtTitle = email.substr(0, indexNumber);
                    var emailBody = email.substr(indexNumber + 1);
                    for (i = 0; i < number; i++) {
                        if (-1 !== emailArr[i].indexOf(emailBody)) {
                            if (email != (emailtTitle + '@' + emailArr[i])) {
                                emailList += '<li>' + emailtTitle + '@' + emailArr[i] + '</li>';
                            }
                        }
                    }
                    $("#J_accountList").html(emailList).show();

                    $("#J_accountList > li").bind("click", function() {
                        $("#J_loginUser").val($(this).html());
                        $("#J_accountList").hide();
                    });
                } else {
                    $("#J_accountList").hide();
                }
            }
        });

        // 检测键盘大小写问题
        $("#J_loginPsw").bind("keypress", function(e) {
            var e = e || window.event;
            var o = e.target || e.srcElement;
            var keyCode = e.keyCode || e.which; // 按键的keyCode
            var isShift = e.shiftKey || (keyCode == 16) || false; // shift键是否按住
            if (((keyCode >= 65 && keyCode <= 90) && !isShift) || ((keyCode >= 97 && keyCode <= 122) && isShift)) {
                $("#J_loginCapsLock").show();
            } else {
                $("#J_loginCapsLock").hide();
            }
        });

        // 普通登录
        var userCommonLogin = function(){
            var username = $("#J_loginUser").val();
            var password = $("#J_loginPsw").val();
            var bind_code = $("#bind_code").val();
            var mobile    = $("#bind_keyword").val();
            if ('' == username) {
                $("#J_login-wrong-tips").html("请填写手机号/邮箱/用户名").show();
                return false;
            }

            if ('' == password) {
                $("#J_login-wrong-tips").html("请填写正确的密码").show();
                return false;
            }
            password = $.md5(password+'zol');
            userLoginBtn('none');
            var url = "/index.php?a=AjaxShopLogin&callback=?&t=" + Math.random();
            $.getJSON(
                url,
                    {username: username, password: password , bind_code: bind_code , mobile: mobile},
                function(data) {
                    if (data.flag) {
                        // 回调 登录zol
                        var url = zolBaseUrl + "/user/api/v2014/login.php?act=signin&callback=?&t=" + Math.random();
                        $.getJSON(
                            url,
                                {username: data.userName, checkCode: data.checkCode, sid: data.userId, check: data.check},
                            function(dataJson) {
                                if (dataJson.code) {

                                    setTimeout(function() {
                                        $("#J_login-wrong-tips").html(dataJson.msg).show();
                                        userLoginBtn();
                                    }, 1000);
                                } else {
                                    window.location = callBackUrl;
                                }
                            }
                        );
                    } else {

                        if(data.msg == '请绑定手机号') {
                            $("#chgpwd_changePwdWindowDiv").show();

                            //去验证
                            $('#validate').on('click',function(){
                                location.href=data.url;
                            });

                            $('.close').on('click',function(){
                                $("#J_loginingBtn").hide();
                                $("#J_loginBtn").show();
                                $("#chgpwd_changePwdWindowDiv").hide();
                            });
                            $('.cancel').on('click',function(){
                                $("#J_loginingBtn").hide();
                                $("#J_loginBtn").show();
                                $("#chgpwd_changePwdWindowDiv").hide();
                            });
                            return false;
                        }
                        if(data.msg == '验证码错误') {
                            $(".login-safe-codenotice").html(data.msg).show();
                            return false;
                        }
                        setTimeout(function() {
                            $("#J_login-wrong-tips").html(data.msg).show();
                            userLoginBtn();
                        }, 1000);
                    }
                }
            );
        }
        $("#J_loginBtn").bind("click", function(e) {
            userCommonLogin();
            return false;
        });
        // 商家登录
        var MerchantCommonLogin = function(){
            var username = $("#J_loginUser_Merchant").val();
            var password = $("#J_loginPsw_Merchant").val();
            if ('' == username) {
                $("#J_login-wrong-tips-merchant").html("请填写用户名").show();
                return false;
            }

            if ('' == password) {
                $("#J_login-wrong-tips-merchant").html("请填写正确的密码").show();
                return false;
            }
            MerchantLoginBtn('none');
            var url = "/index.php?a=AjaxMerchantLogin&callback=?&t=" + Math.random();
            $.getJSON(
                url,
                    {username: username, password: password},
                function(data) {
                    if (data.flag) {
                        //$("#J_login-wrong-tips-merchant").html(data.msg).show();
                        MerchantUrl = data.url;
                        window.location = MerchantUrl;
                    } else {
                        $("#J_login-wrong-tips-merchant").html(data.msg).show();
                        MerchantLoginBtn();
                        return false;
                    }
                }
            );
        };
        $("#J_loginBtn_Merchant").bind("click", function(e) {
            MerchantCommonLogin();
            return false;
        });
        // 发送验证码倒计时时间
        var timeout         = null;
        var countDownNumber = 100;
        var userMobileBindCountDown = function (){
            countDownNumber--;
            $('#bind_sendCode').val(countDownNumber + '秒后重新获取');
            if (!countDownNumber){
                countDownNumber = 100;
                clearTimeout(timeout);
                $('#bind_sendCode').val('发送验证码');
                $("#bind_sendCode").attr("disabled", false);
                $("#bind_sendCode").removeClass("login-safe-sendcode-disabled");
                $(".login-safe-sendcode-hide").hide();
            }else{
                timeout = setTimeout(userMobileBindCountDown, 1000);
            }
        }
        // 发送验证码
        $("#bind_sendCode").bind('click', function(){
            var mobile = $("#bind_keyword").val();
            if ('' == mobile){
                $("#bind_keywordError").html("手机号不能为空").show();
                return false;
            }
            if (!checkMobile(mobile)){
                $("#bind_keywordError").html("请填写正确的手机号").show();
                return false;
            }
            // 请求验证码
            var url = baseUrl + "/index.php?a=SendPhoneCodeBind&callback=?&t="+Math.random();
            $.getJSON(
                url,
                    {mobile:mobile},
                function(data){
                    if (data.flag){
                        $("#bind_keywordError").hide();
                        setTimeout(userMobileBindCountDown, 1000);
                        $("#bind_sendCode").attr("disabled", true);
                        $("#bind_sendCode").addClass("login-safe-sendcode-disabled");
                        $(".login-safe-sendcode-hide").show().css("display","inline-block");
                    }else{
                        $("#bind_keywordError").html(data.msg).show();
                    }
                }
            );
            return false;
        });

        $(".login-safe-close").bind('click', function(){
            $("#chgpwd_changePwdWindowDiv").hide();
        });


        // 绑定手机号并且验证登录
        $("#bind_nextBtn").bind('click', function(){
            var bind_code = $("#bind_code").val();
            if ('' == bind_code){
                $(".login-safe-codenotice").html("验证码不能为空").show();
                return false;
            }
            userCommonLogin();
            return false;
        });
        // 手机号登录
        var userPhoneNumberLogin = function (){
            var mobile    = $("#J_login_mobile_number").val();
            var mobieCode = $("#J_login_mobile_code").val();
            if ('' == mobile) {
                $("#J_login-mobile-wrong-tips").html("请填写手机号").show();
                return false;
            }
            if (!checkMobile(mobile)){
                $("#J_login-mobile-wrong-tips").html("请填写正确的手机号").show();
                return false;
            }
            if ('' == mobieCode) {
                $("#J_login-mobile-wrong-tips").html("请填写手机验证码").show();
                return false;
            }

            var picCode = $('#J_login_mobile_picCode').val();
            var picToken   = $('#J_login_mobile_token').val();


            userMobileLoginBtn('none');
            var url = baseUrl + "/index.php?a=AjaxLoginPhone&callback=?&t="+Math.random();
            $.getJSON(
                url,
                    {mobile:mobile, mobieCode:mobieCode, picCode:picCode, picToken:picToken},
                function(data){
                    if (data.flag){

                        // 发送到论坛验证手机号
                        var url = zolBaseUrl + "/user/api/v2014/phoneLogin.php?callback=?&tt="+Math.random();
                        $.getJSON(
                            url,
                                {token:data.token, phone:data.mobile, t:data.time},
                            function(data){
                                if (data.code){
                                    var errorMsg = '网路繁忙，请稍后再试';
                                    switch(data.code){
                                        case 400 :
                                            errorMsg = '验证期已过，请刷新再试一次';
                                            break;
                                        case 401 :
                                            errorMsg = '登录受限，请刷新再登录';
                                            break;
                                        case 402:
                                            errorMsg = '登录帐号被冻结，请10分钟再试';
                                            break;
                                        case 403:
                                            errorMsg = '网路繁忙，请稍后再试';
                                            break;
                                        case 404:
                                            errorMsg = '网路繁忙，请刷新再试';
                                            break;
                                        default:
                                            errorMsg = '网路繁忙，请稍后再试';
                                    }
                                    $("#J_login-mobile-wrong-tips").html(errorMsg).show();
                                    userMobileLoginBtn();
                                }else{

                                    // 同步本地
                                    var url = baseUrl + "/index.php?a=AjaxLoginPhoneSucess&callback=?&tt=" + Math.random();
                                    $.getJSON(
                                        url,
                                            {userId:data.zol_sid, userName:data.zol_userid, checkCode:data.zol_check, cipher:data.zol_cipher},
                                        function(data){
                                            window.location = callBackUrl;
                                        }
                                    );
                                }
                            }
                        );

                    }else{
                        $("#J_login-mobile-wrong-tips").html(data.msg).show();
                        captchaPhone();
                        userMobileLoginBtn();
                    }
                }
            );
        }
        $("#J_loginBtn_mobile").bind('click', function(){
            userPhoneNumberLogin();
            return false;
        });

        // 回车提交登录
        $('#J_loginForm').keypress(function(e) {
            if (e.keyCode == 13) {
                var loginType = $("#J_login_type").val();
                loginType = parseInt(loginType);
                if ( LoginBtn == 0 ) {
                    if (1 == loginType){
                        userCommonLogin();
                    }
                    if (2 == loginType){
                        userPhoneNumberLogin();
                    }
                } else {
                    MerchantCommonLogin()
                }
            }
        });
    });

</script>
</body>
</html>