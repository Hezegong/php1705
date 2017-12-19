
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>Z商城(ZOL.COM)-中国专业3C数码网购商城｜正品低价 放心购</title>
    <meta name="keywords" content="Z商城,中关村商城,笔记本,手机,数码相机,数码影音,DIY硬件"/>
    <meta name="description" content="Z商城,中关村商城（zol.com）具备在3年内成长为中国最大的3C电子商城之潜力，源于中国IT行业第一垂直媒体（zol.com.cn）在IT及互联网行业已臻十年的深厚积累。运营核心，只为了给用户打造一个放心、省心、舒心的购物平台！"/>
    <link href="/static/css/reset.css" rel="stylesheet"/>
    <link href="/static/css/sitenav.css" rel="stylesheet"/>
    <link href="/static/css/public_head.css" rel="stylesheet"/>
    <link href="/static/css/public_footer.css" rel="stylesheet"/>
    <link href="/static/css/side_toolbar.css" rel="stylesheet">
    <link href="/static/css/shopLoginBox.css" rel="stylesheet"/>
    <link href="/static/css/home.css" rel="stylesheet">
    <link href="/static/css/tuan-pop.css" rel="stylesheet">
    <script src="/static/js/jquery-1.8.1.js"></script>
    <script>
        //手机适配
        if(/AppleWebKit.*Mobile/i.test(navigator.userAgent) || (/MIDP|SymbianOS|NOKIA|SAMSUNG|LG|NEC|TCL|Alcatel|BIRD|DBTEL|Dopod|PHILIPS|HAIER|LENOVO|MOT-|Nokia|SonyEricsson|SIE-|Amoi|ZTE/.test(navigator.userAgent))){
            try{
                if(/Android|Windows Phone|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)){
                    window.location.href= "http://m.zol.com/";
                }
            }catch(e){}
        }
    </script>
</head>

<body>
<div class="wrapper clearfix">
    <div class="zc-login-info">
        <span class="zc-back-home"><a href="http://www.zol.com">商城首页</a></span>
        <span class="zc-login">Hi~欢迎来到Z商城，请<a href="Login/login">登录</a></span>
        <span class="zc-register"><a href="https://login.zol.com/index.php?c=Default&amp;a=Register">免费注册</a></span>
    </div>
    <ul class="zc-quick-menu">
        <li><a href="http://my.zol.com/index.php?c=OrderManage">我的订单</a></li>
        <li class="zc-my-center" onmouseover="showUI(this)" onmouseout="hideUI(this)"> <a href="http://my.zol.com/" class="zc-hd">买家中心<i class="ico"></i></a>
            <div class="zc-my-center-bd" id="zc-my-center-bd" style="display: none;">
                <a href="#" style="display:none;">我的优惠券&nbsp;&nbsp;<em>8</em></a>
                <a href="http://my.zol.com/index.php?c=FollowMerchant">关注的店铺&nbsp;&nbsp;<em id="focusShopNum">30</em></a>
                <a href="http://my.zol.com/index.php?c=FollowGoods">关注的商品&nbsp;&nbsp;<em id="focusGoodsNum">48</em></a>
            </div> </li>
        <li><a href="http://order.zol.com/index.php?c=Cart" id="shop-cart-num">购物车0件</a></li>
        <li><a href="http://help.zol.com/">帮助中心</a></li>
        <li class="zc-separator">|</li>
        <li class="zc-mobile" onmouseover="showUI(this)" onmouseout="hideUI(this)"> <a href="javascript:;" class="zc-hd zc-mobile-hd">手机商城<i class="ico"></i></a>
            <div class="zc-mobile-bd" id="zc-mobile-bd" style="display: none;">
                <img src="http://icon.zol-img.com.cn/zol_shop_logo/shop_wechat.png" width="130" height="130" />
            </div> </li>
        <li><a href="http://www.zol.com.cn">中关村在线</a></li>
        <!--            <li><a href="http://zs.zol.com/">商家入驻</a></li>-->
        <li class="lianxikefu"> <a href="javascript:;" onmouseover="showUI(this)" onmouseout="hideUI(this)" class="zc-hd">联系客服<i class="ico"></i></a>
            <div class="zc-service-tel">
                400-688-1999
            </div> </li>
    </ul>
</div>
<script>
    var Z_now_time = "1513576847";
    var z_user_id = "";
    function showUI(obj) {
        var className = obj.className;
        if (className == "zc-my-center") {
            obj.className = "zc-my-center zc-hover";
            document.getElementById("zc-my-center-bd").style.display = "block";
        } else if (className == "zc-mobile") {
            obj.className = "zc-mobile zc-hover";
            document.getElementById("zc-mobile-bd").style.display = "block";
        } else {
            obj.parentNode.className = "lianxikefu zc-hover";
            obj.nextSibling.style.display = "block";
        }
    }
    function hideUI(obj) {
        var className = obj.className;
        if (className == "zc-my-center zc-hover") {
            obj.className = "zc-my-center";
            document.getElementById("zc-my-center-bd").style.display = "none";
        } else if (className == "zc-mobile zc-hover") {
            obj.className = "zc-mobile";
            document.getElementById("zc-mobile-bd").style.display = "none";
        } else {
            obj.parentNode.className = "lianxikefu";
            obj.nextSibling.style.display = "none";
        }
    }
    function getApiNumber() {
        if (typeof jQuery == "undefined") {
            return false;
        } else {
            var url = "http://www.zol.com/index.php?c=Ajax_Topbar&callback=?&t=" + Math.random();
            $.getJSON(url,
                function(data) {
                    if (data) {
                        document.getElementById("shop-cart-num").innerHTML = "购物车" + data.cartNumber + "件";
                        document.getElementById("focusShopNum").innerHTML = data.shopNumber;
                        document.getElementById("focusGoodsNum").innerHTML = data.goodsNumber;
                    }
                });
        }
    }
    getApiNumber();
</script>
<div class="top-activity-banner"><a href="http://1212.zol.com/"><img src="http://icon.zol-img.com.cn/newshop/shop/index/1200_60_pc.jpg.jpg" width="1200" height="60" alt=""></a></div>
<div class="header">
    <div class="wrapper clearfix">
        <h1 class="logo"><a href="http://www.zol.com/">ZOL商城</a></h1>
        <div href="#" class="city-location">
            <span href="javascript" class="city-name">郑州<em class="icon"></em></span>
            <ul class="city-list">
                <li><a href="/index.php?c=IndexNew&city=beijing">北京</a></li>
                <li><a href="/index.php?c=IndexNew&city=chengdu">成都</a></li>
                <li><a href="/index.php?c=IndexNew&city=qingdao">青岛</a></li>
                <li><a href="/index.php?c=IndexNew&city=xian">西安</a></li>
                <li><a class="cur" href="/index.php?c=IndexNew&city=zhengzhou">郑州</a></li>
                <li><a href="/index.php?c=IndexNew&city=shijiazhuang">石家庄</a></li>
                <li><a href="/index.php?c=IndexNew&city=pingdingshan">平顶山</a></li>
                <li><a href="/index.php?c=IndexNew&city=shanghai">上海</a></li>
                <li><a href="/index.php?c=IndexNew&city=deyang">德阳</a></li>
                <li><a href="/index.php?c=IndexNew&city=handan">邯郸</a></li>
                <li><a href="/index.php?c=IndexNew&city=xingtai">邢台</a></li>
                <li><a href="/index.php?c=IndexNew&city=qinhuangdao">秦皇岛</a></li>
                <li><a href="/index.php?c=IndexNew&city=hengshui">衡水</a></li>
                <li><a href="/index.php?c=IndexNew&city=cangzhou">沧州</a></li>
                <li><a href="/index.php?c=IndexNew&city=chengde">承德</a></li>
                <li><a href="/index.php?c=IndexNew&city=tangshan">唐山</a></li>
                <li><a href="/index.php?c=IndexNew&city=kaifeng">开封</a></li>
                <li><a href="/index.php?c=IndexNew&city=zhumadian">驻马店</a></li>
                <li><a href="/index.php?c=IndexNew&city=anyang">安阳</a></li>
                <li><a href="/index.php?c=IndexNew&city=xinxiang">新乡</a></li>
                <li><a href="/index.php?c=IndexNew&city=langfang">廊坊</a></li>
                <li><a href="/index.php?c=IndexNew&city=baoding">保定</a></li>
                <li><a href="/index.php?c=IndexNew&city=quanguo">全国</a></li>
            </ul>
        </div>

        <div class="quick-entry">
            <a href="http://order.zol.com/index.php?c=Cart" class="cart">购物车<i class="ico"></i><em class="number">0</em></a>
            <a href="http://my.zol.com/index.php?c=Coupon&a=ShopCoupon" class="coupon">我的优惠券<i class="ico"></i></a>
            <a href="http://my.zol.com/index.php?c=OrderManage" class="order">我的订单<i class="ico"></i></a>
        </div>
        <div class="search-box">
            <form action="http://www.zol.com/index.php" method="get">
                <input type="hidden" name="c" value="List">
                <div class="search">
                    <input name="keyword" type="text" class="search-text" autocomplete="off" placeholder="找找您想要的商品" value="">
                    <input type="submit" value="搜索" class="search-btn" hidefocus="true">
                    <!-- 搜索热词 搜索推荐 -->
                    <div class="search-hot-words" id="noresearch_keyword">
                        <a href="http://1212.zol.com?spm=914" target="_blank" title="年终盛典 钜惠狂欢">年终盛典 钜惠狂欢</a>
                        <a href="http://www.zol.com/index.php?c=List&keyword=%C8%FD%D0%C7note8&spm=921&spm=914" target="_blank" title="三星Note8">三星Note8</a>
                    </div>

                    <!-- end  -->
                </div>
                <input type="hidden" name="spm" value="921">
            </form>
        </div>
        <!--        <div class="notice-sign"><span class="label">公告</span>尊敬的用户您好，因平台400电话检修，如需咨询请拨打010-53712269或将问题反馈至400@zol.com.cn。</div>-->
    </div>
</div>
<div class="nav-box ">
    <div class="wrapper">
        <ul class="nav clearfix">
            <li class="current"><a href="http://www.zol.com/" >首页</a></li>
            <li ><a href="http://tuan.zol.com/" target="_blank">团购</a></li>
            <li ><a href="http://diy.zol.com/" target="_blank">电子竞技</a></li>

        </ul>
        <div class="category-nav category-nav-on">
            <div class="category-nav-header">全部分类<i class="ico"></i></div>
            <div class="category-nav-body">
                <div class="category-items" id="J_CategoryItems">
                    <div class="item" data-index="1">
                        <h3><a href="javascript:;">手机</a><i></i></h3>
                        <i class="icon-01"></i>
                    </div>
                    <div class="item" data-index="2">
                        <h3><a href="javascript:;">电脑</a><i></i></h3>
                        <i class="icon-02"></i>
                    </div>
                    <div class="item" data-index="3">
                        <h3><a href="javascript:;">DIY</a><i></i></h3>
                        <i class="icon-07"></i>
                    </div>
                    <div class="item" data-index="4">
                        <h3><a href="javascript:;">数码</a><i></i></h3>
                        <i class="icon-03"></i>
                    </div>
                    <div class="item" data-index="5">
                        <h3><a href="javascript:;">外设</a><i></i></h3>
                        <i class="icon-04"></i>
                    </div>
                    <div class="item" data-index="6">
                        <h3><a href="javascript:;">智能</a><i></i></h3>
                        <i class="icon-05"></i>
                    </div>
                </div>
                <div class="category-dropdown" id="J_CategoryDropdown">
                    <div class="category-all" id="category-item-1" style="display:none;">
                        <div class="items-list">
                            <a href="http://www.zol.com/cell_phone/list/c34_s57_o3.html?spm=1864.46115" target="_blank">手机</a>
                            <a href="http://www.zol.com/pocketpower/list/c10_s688.html?spm=1864.45618" target="_blank">移动电源</a>
                            <a href="http://www.zol.com/microphone/list/c10_s223_pms6036.html?spm=1864.45615" target="_blank">蓝牙耳机</a>
                            <a href="http://www.zol.com/mobile-laoding/list/c34_s729.html?spm=1864.45612" target="_blank">手机贴膜</a>
                            <a href="http://www.zol.com/index.php?c=List&str=c34_s731&spm=1864.45610" target="_blank">保护套</a>
                            <a href="http://www.zol.com/datacable/list/c34_s726.html?spm=1864.45609" target="_blank">数据线</a>
                            <a href="http://www.zol.com/cellcharger/list/c34_s499.html?spm=1864.45608" target="_blank">充电器</a>
                            <a href="http://www.xgo.cn?spm=1864.47204" target="_blank">手机维修</a>
                        </div>
                        <div class="banner"><a href="http://www.zol.com/index.php?c=List&str=c34_s57&keyword=r11&spm=1870.45922" target="_blank"><img width="620" height="290" src="http://i0.mercrt.fd.zol-img.com.cn/g5/M00/03/07/ChMkJ1lI45iIRevLAACSJ799tooAAdJQQD5VfkAAJI_056.jpg" alt=""></a></div>
                    </div>
                    <div class="category-all" id="category-item-2" style="display:none;">
                        <div class="items-list">
                            <a href="http://www.zol.com/index.php?c=List&keyword=%B1%CA%BC%C7%B1%BE&spm=1865.45638" target="_blank">笔记本电脑</a>
                            <a href="http://www.zol.com/notebook/list/c64_s16_pms1227.html?spm=1865.45636" target="_blank">游戏本</a>
                            <a href="http://www.zol.com/notebook/list/c64_s16_pms1229_o3.html?spm=1865.45635" target="_blank">超极本</a>
                            <a href="http://www.zol.com/tablepc/list/c69_s702_pms4410_o3.html?spm=1865.45634" target="_blank">二合一平板电脑</a>
                            <a href="http://www.zol.com/tablepc/list/c69_s702_o3.html?spm=1865.45633" target="_blank">平板电脑</a>
                            <a href="http://www.zol.com/desktop_pc/list/c2_s27_o3.html?spm=1865.45632" target="_blank">品牌整机</a>
                            <a href="http://www.zol.com/all-in-one_pc/list/c2_s641_o3.html?spm=639.42254" target="_blank">一体机</a>
                            <a href="http://www.zol.com/notebook_accessories/list/c64_s346.html?spm=1865.45630" target="_blank">笔记本配件</a>
                            <a href="http://www.zol.com/notebook_battery/list/c64_s320.html?spm=1865.45628" target="_blank">笔记本电池</a>
                            <a href="http://www.zol.com/notebook_bag/list/c64_s668.html?spm=1865.45627" target="_blank">笔记本包</a>
                        </div>
                        <div class="banner"><a href="http://tuan.zol.com/index.php?c=List&a=DanPinTuan&cid=2&spm=1871.45915" target="_blank"><img width="620" height="290" src="http://i0.mercrt.fd.zol-img.com.cn/g5/M00/04/0A/ChMkJlngYZiIViJ_AABfbfycT5IAAhNigCrnVgAAF-F050.jpg" alt=""></a></div>
                    </div>
                    <div class="category-all" id="category-item-3" style="display:none;">
                        <div class="items-list">
                            <a href="http://www.zol.com/index.php?c=List&keyword=DIY%D6%F7%BB%FA&spm=921" target="_blank">DIY主机</a>
                            <a href="http://tuan.zol.com/index.php?c=List&a=DanPinTuan&cid=5&spm=1866.45905" target="_blank">团购钜惠</a>
                            <a href="http://www.zol.com/index.php?c=List&str=c1_s2&keyword=%D3%B2%C5%CC&spm=1866.45914" target="_blank">硬盘</a>
                            <a href="http://www.zol.com/index.php?c=List&str=c1_s35&keyword=%B5%E7%D4%B4&spm=1866.45913" target="_blank">电源</a>
                            <a href="http://www.zol.com/index.php?c=List&str=c1_s28&keyword=cpu&spm=1866.45912" target="_blank">散热器</a>
                            <a href="http://www.zol.com/index.php?c=List&str=c1_s28&keyword=cpu&spm=1866.45911" target="_blank">CPU</a>
                            <a href="http://www.zol.com/index.php?c=List&str=c1_s10&keyword=%BB%FA%CF%E4&spm=1866.45910" target="_blank">机箱</a>
                            <a href="http://www.zol.com/index.php?c=List&str=c1_s5&keyword=%D6%F7%B0%E5&spm=1866.45909" target="_blank">主板</a>
                            <a href="http://www.zol.com/index.php?c=List&str=c1_s3&keyword=%C4%DA%B4%E6&spm=1866.45908" target="_blank">内存</a>
                            <a href="http://www.zol.com/index.php?c=List&str=c1_s626&keyword=%B9%CC%CC%AC&spm=1866.45907" target="_blank">固态硬盘</a>
                            <a href="http://www.zol.com/index.php?c=List&str=c1_s6&keyword=%CF%D4%BF%A8&spm=1866.45906" target="_blank">显卡</a>
                        </div>
                        <div class="banner"><a href="http://tuan.zol.com/index.php?c=List&a=DanPinTuan&cid=3&spm=1872.45916" target="_blank"><img width="620" height="290" src="http://i0.mercrt.fd.zol-img.com.cn/g5/M00/04/0A/ChMkJ1ngYYeIRnprAABx7uVQfmwAAhNigBj9cQAAHIG730.jpg" alt=""></a></div>
                    </div>
                    <div class="category-all" id="category-item-4" style="display:none;">
                        <div class="items-list">
                            <a href="http://www.zol.com/digital_camera/list/c35_s15.html?spm=1867.45625" target="_blank">数码相机</a>
                            <a href="http://www.zol.com/digital_camcorder/list/c35_s81.html?spm=1867.45624" target="_blank">摄像机</a>
                            <a href="http://www.zol.com/lens/list/c35_s268.html?spm=1867.45623" target="_blank">相机镜头</a>
                            <a href="http://www.zol.com/index.php?c=List&keyword=%CF%E0%BB%FA%B5%E7%B3%D8&spm=1867.45622" target="_blank">相机电池</a>
                            <a href="http://www.zol.com/index.php?c=List&keyword=%C9%C1%B9%E2%B5%C6&spm=1867.45620" target="_blank">闪光灯</a>
                            <a href="http://www.zol.com/filter/list/c35_s395.html?spm=1867.45619" target="_blank">滤镜</a>
                            <a href="12?spm=1867.45617" target="_blank">电子教育</a>
                            <a href="11?spm=1867.45616" target="_blank">拍立得</a>
                            <a href="http://www.zol.com/index.php?c=List&keyword=%CF%E0%BB%FA%B0%FC&spm=1867.45611" target="_blank">相机包</a>
                            <a href="http://www.zol.com/index.php?c=List&keyword=%CF%E0%BB%FA%D2%A3%BF%D8%C6%F7&spm=1867.45614" target="_blank">相机遥控器</a>
                            <a href="http://www.zol.com/index.php?c=List&keyword=%C9%C1%B4%E6%BF%A8&spm=1867.45613" target="_blank">闪存卡</a>
                        </div>
                        <div class="banner"><a href="http://tuan.zol.com/index.php?c=List&a=DanPinTuan&cid=4&spm=1873.46116" target="_blank"><img width="620" height="290" src="http://i0.mercrt.fd.zol-img.com.cn/g5/M00/04/0A/ChMkJlngYXGIMYQPAABuKpsnXk8AAhNiQPl_AIAAG5C016.jpg" alt=""></a></div>
                    </div>
                    <div class="category-all" id="category-item-5" style="display:none;">
                        <div class="items-list">
                            <a href="http://www.zol.com/keyboard/list/c66_s33.html?spm=1868.45670" target="_blank">键盘</a>
                            <a href="http://www.zol.com/mice/list/c66_s32.html?spm=1868.45669" target="_blank">鼠标</a>
                            <a href="http://www.zol.com/keyboards_mouse/list/c66_s100.html?spm=1868.45668" target="_blank">键鼠套装</a>
                            <a href="http://www.zol.com/index.php?c=List&str=c66_s343&keyword=%CA%F3%B1%EA%B5%E6&spm=1868.45667" target="_blank">鼠标垫</a>
                            <a href="http://www.zol.com/index.php?c=List&str=c10_s223&keyword=%B6%FA%BB%FA&spm=1868.45666" target="_blank">耳机</a>
                            <a href="http://www.zol.com/index.php?c=List&str=c66_s34&keyword=%D2%F4%CF%E4&spm=1868.45665" target="_blank">音箱</a>
                            <a href="http://www.zol.com/index.php?c=List&keyword=%CD%B6%D3%B0%D2%C7&spm=1868.45664" target="_blank">投影仪</a>
                            <a href="http://www.zol.com/index.php?c=List&keyword=%C2%BC%D2%F4%B1%CA&spm=1868.45663" target="_blank">录音笔</a>
                            <a href="http://www.zol.com/index.php?c=List&keyword=%C2%B7%D3%C9%C6%F7&spm=1868.45662" target="_blank">路由器</a>
                            <a href="http://www.zol.com/index.php?c=List&str=c10_s274&keyword=%D2%C6%B6%AF%D3%B2%C5%CC&spm=1868.45661" target="_blank">移动硬盘</a>
                            <a href="http://www.zol.com/detail/usb_flash_drive/I-MU/28097960.html?skuId=7998255&spm=1868.45660" target="_blank">U盘</a>
                            <a href="http://www.zol.com/webcams/list/c10_s60.html?spm=1868.45659" target="_blank">摄像头</a>
                            <a href="http://www.zol.com/index.php?c=List&str=c58_s78&keyword=%CA%D6%B1%FA&spm=1868.45658" target="_blank">手柄</a>
                        </div>
                        <div class="banner"><a href="http://tuan.zol.com/index.php?c=List&a=DanPinTuan&cid=5&spm=1874.45921" target="_blank"><img width="620" height="290" src="http://i2.mercrt.fd.zol-img.com.cn/g5/M00/04/0A/ChMkJ1ngYWGIQPhbAABioTHvEP0AAhNiQPOVxcAAGK5648.jpg" alt=""></a></div>
                    </div>
                    <div class="category-all" id="category-item-6" style="display:none;">
                        <div class="items-list">
                            <a href="http://www.zol.com/IntelligentBracelet/list/c84_s829.html?spm=1869.45654" target="_blank">智能手环</a>
                            <a href="http://www.zol.com/GPSwatch/list/c84_s827.html?spm=1869.45652" target="_blank">智能手表</a>
                            <a href="http://www.zol.com/head-mounted-display-device/list/c84_s972.html?spm=1869.45650" target="_blank">VR眼镜</a>
                            <a href="http://www.zol.com/index.php?c=List&keyword=%D6%C7%C4%DC%BC%EC%B2%E2&&spm=1869.45649" target="_blank">健康监测</a>
                            <a href="http://www.zol.com/Intelligent_robot/list/c79_s1010.html?spm=1869.45647" target="_blank">智能机器人</a>
                            <a href="http://www.zol.com/index.php?c=List&keyword=%B5%E7%D7%D3%B3%D3&&spm=1869.45646" target="_blank">智能电子秤</a>
                            <a href="http://www.zol.com/index.php?c=List&keyword=%D6%C7%C4%DC%B5%C6&&spm=1869.45644" target="_blank">智能灯</a>
                            <a href="http://www.zol.com/index.php?c=List&str=c17&&spm=1869.45643" target="_blank">智能投影</a>
                            <a href="http://www.zol.com/index.php?c=List&keyword=vive&spm=1869.45642" target="_blank">HTC VIVE</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 轮播图 -->
<div class="focus-banner">
    <div class="focus-box">
        <ul id="J_FocusSlider" class="focus-list">
            <li>
                <a href="http://1212.zol.com/?spm=1860.47499" target="_blank"><img width="1920" height="400" src="http://i1.mercrt.fd.zol-img.com.cn/g5/M00/03/03/ChMkJ1owjOmIc_bkAAGJk_fX23cAAjHpwCQ2agAAYmr407.jpg" alt="双12" /></a>
            </li>
            <li>
                <a href="http://www.xgo.cn/?spm=1860.47069" target="_blank"><img width="1920" height="400" src="http://i3.mercrt.fd.zol-img.com.cn/g5/M00/00/06/ChMkJ1opICCIHAZIAAEOj8wywIwAAi8TQKKxkEAAQ6n789.jpg" alt="修购" /></a>
            </li>
            <li>
                <a href="http://go.zol.com/topic/6692844.html?spm=1860.46100" target="_blank"><img width="1920" height="400" src="http://i0.mercrt.fd.zol-img.com.cn/g5/M00/0F/0B/ChMkJlono6SIIIMfAAJ9ohcW6_QAAi5iQFAEF0AAn26136.jpg" alt="拼尽全利 年终盛宴" /></a>
            </li>
        </ul>
    </div>
</div>
<div class="wrapper">
    <!-- 团购 -->
    <!-- 轻松省 -->
    <!-- 团购 -->
    <div id="J_tuanSection" class="section floor-moudle">
        <div class="tuan-region clearfix">
            <div class="tuan-region_banner">
                <img src="http://icon.zol-img.com.cn/newshop/shop/index/tuanBanner.png" alt="" width="181" height="587" class="pic">
                <a href="http://tuan.zol.com" target="_blank" class="more-tuan">更多团购</a>
            </div>
            <!-- 到店 -->
            <ul class="tuan_ware-arrival">
                <li class="item">
                    <a href="http://www.zol.com/detail/cell_phone/xiaomi/30723972.html?skuId=12328411&spm=2054.46471" target="_blank" class="pic">
                        <img src="http://i3.mercrt.fd.zol-img.com.cn/g5/M00/04/02/ChMkJlozKVGIMU8cAAFoOxzbJJgAAjLXwNhDVIAAWhT039.png" alt="红米5Plus 3GB+32GB" width="140" height="140">
                        <span class="icon">仅限到店</span>
                    </a>
                    <div class="word-info">
                        <p class="name"><a href="http://www.zol.com/detail/cell_phone/xiaomi/30723972.html?skuId=12328411&spm=2054.46471" target="_blank">红米5Plus 3GB+32GB</a></p>
                        <p class="price"><span class="price_rmb">￥</span>--</p>
                        <div class="icon-group">
                            <span class="icon">线下连锁保障</span>
                        </div>
                        <span class="arrival-btn" data-proid="22" data-merid="" data-goodsid="" data-skuid="">到店团</span>
                    </div>
                </li>
                <li class="item">
                    <a href="http://www.zol.com/detail/cell_phone/rongyao/30013300.html?skuId=10947465&spm=2054.46470" target="_blank" class="pic">
                        <img src="http://i0.mercrt.fd.zol-img.com.cn/g5/M00/04/02/ChMkJ1ozKZWIAToHAABxH_UWxc0AAjLYAHDs5wAAHE3436.png" alt="荣耀9 6GB+64GB" width="140" height="140">
                        <span class="icon">仅限到店</span>
                    </a>
                    <div class="word-info">
                        <p class="name"><a href="http://www.zol.com/detail/cell_phone/rongyao/30013300.html?skuId=10947465&spm=2054.46470" target="_blank">荣耀9 6GB+64GB</a></p>
                        <p class="price"><span class="price_rmb">￥</span>--</p>
                        <div class="icon-group">
                            <span class="icon">本地服务</span>
                        </div>
                        <span class="arrival-btn" data-proid="22" data-merid="" data-goodsid="" data-skuid="">到店团</span>
                    </div>
                </li>
                <li class="item">
                    <a href="http://www.zol.com/detail/cell_phone/SUGAR/30552165.html?skuId=12022217&spm=2054.46469" target="_blank" class="pic">
                        <img src="http://i3.mercrt.fd.zol-img.com.cn/g5/M00/04/02/ChMkJ1ozKdqIP-W3AAFGeIJX9IIAAjLYQCcoaQAAUaQ963.png" alt="SUGAR F9（全网通）4GB+64GB" width="140" height="140">
                        <span class="icon">仅限到店</span>
                    </a>
                    <div class="word-info">
                        <p class="name"><a href="http://www.zol.com/detail/cell_phone/SUGAR/30552165.html?skuId=12022217&spm=2054.46469" target="_blank">SUGAR F9（全网通）4GB+64GB</a></p>
                        <p class="price"><span class="price_rmb">￥</span>--</p>
                        <div class="icon-group">
                            <span class="icon">全国售后联保</span>
                        </div>
                        <span class="arrival-btn" data-proid="22" data-merid="" data-goodsid="" data-skuid="">到店团</span>
                    </div>
                </li>
            </ul>
            <!-- 团购商品 -->
            <ul class="tuan_ware-list clearfix">
                <li class="item">
                    <div class="function-upward_region">
                        <a href="http://www.zol.com/detail/cell_phone/vivo/30526673.html?skuId=11953520" target="_blank" class="pic">
                            <img src="http://i1.mercrt.fd.zol-img.com.cn/g5/M00/03/05/ChMkJ1owv8uIR5NAAABMOKR84QIAAjIGwIW7JgAAExQ197.jpg" alt="vivo x20 团购热卖！" width="180" height="180">
                        </a>
                        <div class="function-upward_hover">
                            <span class="opacity-mask"></span>
                            <div class="function-upward_con">
                                <p class="refer-price">电商参考价： <b>￥2998.00</b></p>
                                <p class="ware-detail">
                                    <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=30526673&type=1" data-id="30526673" target="evaluateLayer" dataseetype="0" >评测</a>
                                    <span class="line">|</span>
                                    <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=30526673&type=2" data-id="30526673" target="evaluateLayer" dataseetype="1" >视频</a>
                                    <span class="line">|</span>
                                    <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=30526673&type=3" data-id="30526673" target="evaluateLayer" dataseetype="2">点评</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="word-info">
                        <p class="name">
                            <a href="http://www.zol.com/detail/cell_phone/vivo/30526673.html?skuId=11953520" target="_blank" >vivo x20 团购热卖！</a>
                        </p>
                        <p class="price"><span class="price_rmb">￥</span>2698</p>
                        <div class="time">剩余：<em><span class="red-color">1</span>天<span class="red-color">23</span>小时<span class="red-color">29</span>分<span class="red-color">08</span>秒</em></div>
                    </div>
                </li>
                <li class="item">
                    <div class="function-upward_region">
                        <a href="http://www.zol.com/detail/solid_state_drive/galaxy/28070880.html?skuId=10421980" target="_blank" class="pic">
                            <img src="http://i0.mercrt.fd.zol-img.com.cn/g5/M00/00/0E/ChMkJ1oD7qCIWXe0AABzQeHMD7kAAh-cgDBJFIAAHNZ986.jpg" alt="影驰120G固态硬盘" width="180" height="180">
                        </a>
                        <div class="function-upward_hover">
                            <span class="opacity-mask"></span>
                            <div class="function-upward_con">
                                <p class="refer-price">电商参考价： <b>￥暂无</b></p>
                                <p class="ware-detail">
                                    <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=28070880&type=1" data-id="28070880" target="evaluateLayer" dataseetype="0" >评测</a>
                                    <span class="line">|</span>
                                    <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=28070880&type=2" data-id="28070880" target="evaluateLayer" dataseetype="1" >视频</a>
                                    <span class="line">|</span>
                                    <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=28070880&type=3" data-id="28070880" target="evaluateLayer" dataseetype="2">点评</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="word-info">
                        <p class="name">
                            <a href="http://www.zol.com/detail/solid_state_drive/galaxy/28070880.html?skuId=10421980" target="_blank" >影驰120G固态硬盘</a>
                        </p>
                        <p class="price"><span class="price_rmb">￥</span>299</p>
                        <div class="time">剩余：<em><span class="red-color">4</span>天<span class="red-color">23</span>小时<span class="red-color">53</span>分<span class="red-color">48</span>秒</em></div>
                    </div>
                </li>
                <li class="item">
                    <div class="function-upward_region">
                        <a href="http://www.zol.com/detail/vga/colorful/28803632.html?skuId=10215112" target="_blank" class="pic">
                            <img src="http://i3.mercrt.fd.zol-img.com.cn/g5/M00/07/02/ChMkJlnnEB2IcaO7AADTw2W60BgAAhXhwFmmXwAANPb429.png" alt="七彩虹显卡iGame1050ti" width="180" height="180">
                        </a>
                        <div class="function-upward_hover">
                            <span class="opacity-mask"></span>
                            <div class="function-upward_con">
                                <p class="refer-price">电商参考价： <b>￥1249.00</b></p>
                                <p class="ware-detail">
                                    <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=28803632&type=1" data-id="28803632" target="evaluateLayer" dataseetype="0" >评测</a>
                                    <span class="line">|</span>
                                    <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=28803632&type=2" data-id="28803632" target="evaluateLayer" dataseetype="1" >视频</a>
                                    <span class="line">|</span>
                                    <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=28803632&type=3" data-id="28803632" target="evaluateLayer" dataseetype="2">点评</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="word-info">
                        <p class="name">
                            <a href="http://www.zol.com/detail/vga/colorful/28803632.html?skuId=10215112" target="_blank" >七彩虹显卡iGame1050ti</a>
                        </p>
                        <p class="price"><span class="price_rmb">￥</span>1099</p>
                        <div class="time">剩余：<em><span class="red-color">5</span>天<span class="red-color">23</span>小时<span class="red-color">56</span>分<span class="red-color">50</span>秒</em></div>
                    </div>
                </li>
                <li class="item">
                    <div class="function-upward_region">
                        <a href="http://www.zol.com/detail/cell_phone/samsung/30693422.html?skuId=12288984" target="_blank" class="pic">
                            <img src="http://i4.mercrt.fd.zol-img.com.cn/g5/M00/02/06/ChMkJ1oui7OIIF5MAAA27Dn-1SMAAjEXwPg-l0AADcE764.jpg" alt="三星 S7 Edge" width="180" height="180">
                        </a>
                        <div class="function-upward_hover">
                            <span class="opacity-mask"></span>
                            <div class="function-upward_con">
                                <p class="refer-price">电商参考价： <b>￥2699.00</b></p>
                                <p class="ware-detail">
                                    <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=30693422&type=1" data-id="30693422" target="evaluateLayer" dataseetype="0" >评测</a>
                                    <span class="line">|</span>
                                    <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=30693422&type=2" data-id="30693422" target="evaluateLayer" dataseetype="1" >视频</a>
                                    <span class="line">|</span>
                                    <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=30693422&type=3" data-id="30693422" target="evaluateLayer" dataseetype="2">点评</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="word-info">
                        <p class="name">
                            <a href="http://www.zol.com/detail/cell_phone/samsung/30693422.html?skuId=12288984" target="_blank" >三星 S7 Edge</a>
                        </p>
                        <p class="price"><span class="price_rmb">￥</span>2628</p>
                        <div class="time">剩余：<em><span class="red-color">0</span>天<span class="red-color">23</span>小时<span class="red-color">29</span>分<span class="red-color">08</span>秒</em></div>
                    </div>
                </li>
                <li class="item">
                    <div class="function-upward_region">
                        <a href="http://www.zol.com/detail/notebook/huawei/30152934.html?skuId=12090545" target="_blank" class="pic">
                            <img src="http://i1.mercrt.fd.zol-img.com.cn/g5/M00/0B/00/ChMkJlofgk2IA3MqAAFean8b9tQAAim2QCOYj0AAV6C867.jpg" alt="金色MateBook X（i7/8GB/512GB）" width="180" height="180">
                        </a>
                        <div class="function-upward_hover">
                            <span class="opacity-mask"></span>
                            <div class="function-upward_con">
                                <p class="refer-price">电商参考价： <b>￥9988.00</b></p>
                                <p class="ware-detail">
                                    <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=30152934&type=1" data-id="30152934" target="evaluateLayer" dataseetype="0" >评测</a>
                                    <span class="line">|</span>
                                    <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=30152934&type=2" data-id="30152934" target="evaluateLayer" dataseetype="1" >视频</a>
                                    <span class="line">|</span>
                                    <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=30152934&type=3" data-id="30152934" target="evaluateLayer" dataseetype="2">点评</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="word-info">
                        <p class="name">
                            <a href="http://www.zol.com/detail/notebook/huawei/30152934.html?skuId=12090545" target="_blank" >金色MateBook X（i7/8GB/512GB）</a>
                        </p>
                        <p class="price"><span class="price_rmb">￥</span>8688</p>
                        <div class="time">剩余：<em><span class="red-color">6</span>天<span class="red-color">03</span>小时<span class="red-color">53</span>分<span class="red-color">01</span>秒</em></div>
                    </div>
                </li>
                <li class="item">
                    <div class="function-upward_region">
                        <a href="http://www.zol.com/detail/notebook/asus/30172074.html?skuId=11370883" target="_blank" class="pic">
                            <img src="http://i0.mercrt.fd.zol-img.com.cn/g5/M00/0E/01/ChMkJlok8YCIdesNAAB4zspNw3oAAizDQIjDb4AAHjm506.jpg" alt="华硕S4000UA超窄边框轻薄笔记本8G 256GB SSD" width="180" height="180">
                        </a>
                        <div class="function-upward_hover">
                            <span class="opacity-mask"></span>
                            <div class="function-upward_con">
                                <p class="refer-price">电商参考价： <b>￥4699.00</b></p>
                                <p class="ware-detail">
                                    <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=30172074&type=1" data-id="30172074" target="evaluateLayer" dataseetype="0" >评测</a>
                                    <span class="line">|</span>
                                    <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=30172074&type=2" data-id="30172074" target="evaluateLayer" dataseetype="1" >视频</a>
                                    <span class="line">|</span>
                                    <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=30172074&type=3" data-id="30172074" target="evaluateLayer" dataseetype="2">点评</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="word-info">
                        <p class="name">
                            <a href="http://www.zol.com/detail/notebook/asus/30172074.html?skuId=11370883" target="_blank" >华硕S4000UA超窄边框轻薄笔记本8G 256GB SSD</a>
                        </p>
                        <p class="price"><span class="price_rmb">￥</span>4499</p>
                        <div class="time">剩余：<em><span class="red-color">6</span>天<span class="red-color">03</span>小时<span class="red-color">33</span>分<span class="red-color">41</span>秒</em></div>
                    </div>
                </li>
            </ul>
        </div>
    </div>                <!-- zol体验店 -->
    <div class="section section-2 floor-moudle">
        <div id="tyanContent">
            <ul class="coupon-list clearfix">
                <li class="all">
                    <i class="ico"></i>
                    <h4>领券中心</h4>
                    <p>COUPON</p>
                    <div><a class="look" href="/index.php?c=CouponSore" target="_blank">去看看&nbsp;<span>&gt;&gt;</span></a></div>
                </li>
                <li>
                    <i class="ico"></i>
                    <div class="info clearfix">
                        <div class="price">&yen;300</div>
                        <div class="name">
                            <h5>家得福手机连锁专营店</h5>
                            <p>满2399可用</p>
                        </div>
                    </div>
                    <div class="go-and-get"><a href="javascript:;" class="coupon_get" data-couponId="1186" data-start="17.12.18" data-stop="18.01.02">立即领取&nbsp;
                            <span>&gt;&gt;</span></a></div>
                </li>
                <li>
                    <i class="ico"></i>
                    <div class="info clearfix">
                        <div class="price">&yen;400</div>
                        <div class="name">
                            <h5>风之华手机连锁专营店</h5>
                            <p>满2000可用</p>
                        </div>
                    </div>
                    <div class="go-and-get"><a href="javascript:;" class="coupon_get" data-couponId="1185" data-start="17.12.17" data-stop="18.01.01">立即领取&nbsp;
                            <span>&gt;&gt;</span></a></div>
                </li>
                <li>
                    <i class="ico"></i>
                    <div class="info clearfix">
                        <div class="price">&yen;49</div>
                        <div class="name">
                            <h5>新捷数码(正品特惠)</h5>
                            <p>满5999可用</p>
                        </div>
                    </div>
                    <div class="go-and-get"><a href="javascript:;" class="coupon_get" data-couponId="1184" data-start="17.12.15" data-stop="17.12.22">立即领取&nbsp;
                            <span>&gt;&gt;</span></a></div>
                </li>
                <li>
                    <i class="ico"></i>
                    <div class="info clearfix">
                        <div class="price">&yen;39</div>
                        <div class="name">
                            <h5>新捷数码(正品特惠)</h5>
                            <p>满3999可用</p>
                        </div>
                    </div>
                    <div class="go-and-get"><a href="javascript:;" class="coupon_get" data-couponId="1183" data-start="17.12.15" data-stop="17.12.22">立即领取&nbsp;
                            <span>&gt;&gt;</span></a></div>
                </li>
            </ul>
            <script>
                $(".coupon_get").click(function(){
                    var couponId = $(this).attr("data-couponId");
                    var startTime = $(this).attr('data-start');
                    var stopTime  = $(this).attr("data-stop");
                    $.ajax({
                        'url':'/index.php?c=Ajax_Coupon&a=GetCoupon&couponId='+couponId,
                        'dataType':'json',
                        'success':function(response){
                            if(response.flag) {
                                $(".zc-tab-coupons .xhd").show();
                                $("#get-coupon-success-box").show();
                                $("#get-coupon-success-box p").html("使用时间:" + startTime +" - " + stopTime);
                            } else {
                                if (response.msg == '未登录') {
                                    ZsLogin.openLoginBox();
                                    return false;
                                }
                                $("#get-coupon-failed-box p").html(response.msg);
                                $("#get-coupon-failed-box").show();
                            }
                        }
                    });
                });
            </script>            </div>
    </div>
    <!-- 到店购 -->
    <!-- 同城购 -->
    <div class="section section-3 floor-moudle">
        <div class="section-header clearfix">
            <h3>同城购</h3>
            <span class="sec-header-tip">同城、身边、退换无忧</span>
            <a href="http://www.zol.com/shop_194974" target="_blank" class="more-link">更多</a>
        </div>
        <div class="citywide wrap">
            <ul class="citywide-banner_list clearfix">
                <li class="item">
                    <a href="http://www.zol.com/shop_194974/" target="_blank">
                        <img src="http://i1.mercrt.fd.zol-img.com.cn/g5/M00/02/0F/ChMkJ1lHbJiIXDLOAACAtnKYmEMAAdHaQBZw10AAIDO597.jpg" alt="" width="398" height="200">
                    </a>
                </li>
                <li class="item">
                    <a href="http://www.zol.com/detail/cell_phone/huawei/29536159.html?skuId=10213358&spm=921" target="_blank">
                        <img src="http://i2.mercrt.fd.zol-img.com.cn/g5/M00/03/00/ChMkJ1lHe2GIDfPZAABzOiTmNx0AAdHgwKk018AAHNS408.jpg" alt="" width="398" height="200">
                    </a>
                </li>
                <li class="item">
                    <a href="http://www.zol.com/detail/cell_phone/meizu/28955526.html?skuId=9001916&spm=921" target="_blank">
                        <img src="http://i2.mercrt.fd.zol-img.com.cn/g5/M00/03/00/ChMkJllHhbqIDkisAABpweO51TAAAdHnQOg4A0AAGnZ518.jpg" alt="" width="398" height="200">
                    </a>
                </li>
            </ul>
            <ul class="citywide-ware_list clearfix">
                <li class="item">
                    <a href="http://www.zol.com/detail/cell_phone/meizu/29099635.html?skuId=9649281" target="_blank" class="pic">
                        <img src="http://i4.mercrt.fd.zol-img.com.cn/g5/M00/0D/09/ChMkJ1lV-jmIIC3OAABJ1W6SqzMAAdxnACMN4sAAEnt864.jpg" alt="顺丰送壳膜/ 魅族 魅蓝Note5 3G+32G全网通 移动联通电信4G手机" width="200" height="200">
                    </a>
                    <p class="ware-name">
                        <a href="http://www.zol.com/detail/cell_phone/meizu/29099635.html?skuId=9649281" target="_blank">顺丰送壳膜/ 魅族 魅蓝Note5 3G+32G全网通 移动联通电信4G手机</a>
                    </p>
                    <p class="ware-msg">正品行货，顺丰包邮 5.5寸屏幕</p>
                    <div class="price-info clearfix">
                        <p class="price">&yen;928.00</p>
                        <p class="refer-price"><span class="tl">电商参考价:</span>&yen;799.00</p>
                    </div>
                    <div class="ware-detail">
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=29099635&type=1" data-id="29099635" target="evaluateLayer" dataseetype="0" class="function-icon">
                            商品评价
                            <div class="function-icon_hover">
                                <p class="con">商品评价</p>
                            </div>
                        </a>
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=29099635&type=2" data-id="29099635" target="evaluateLayer" dataseetype="1" class="function-icon">
                            商品视频
                            <div class="function-icon_hover">
                                <p class="con">商品视频</p>
                            </div>
                        </a>
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=29099635&type=3" data-id="29099635" target="evaluateLayer" dataseetype="2" class="function-icon">
                            网友点评
                            <div class="function-icon_hover">
                                <p class="con">网友点评</p>
                            </div>
                        </a>
                    </div>
                </li>
                <li class="item">
                    <a href="http://www.zol.com/detail/cell_phone/chuizi/29940068.html?skuId=0" target="_blank" class="pic">
                        <img src="http://i4.mercrt.fd.zol-img.com.cn/g5/M00/0D/09/ChMkJllV-tmIFI8bAABJSxu-p64AAdxnQAFh1AAAElj574.jpg" alt="锤子 坚果Pro 4GB+32GB全网通4G手机锤子Pro 锤子手机【送指环支架】" width="200" height="200">
                    </a>
                    <p class="ware-name">
                        <a href="http://www.zol.com/detail/cell_phone/chuizi/29940068.html?skuId=0" target="_blank">锤子 坚果Pro 4GB+32GB全网通4G手机锤子Pro 锤子手机【送指环支架】</a>
                    </p>
                    <p class="ware-msg">正品行货 全国联保 八核处理器，全玻璃面板。</p>
                    <div class="price-info clearfix">
                        <p class="price">&yen;1199.00</p>
                        <p class="refer-price"><span class="tl">电商参考价:</span>&yen;1299.00</p>
                    </div>
                    <div class="ware-detail">
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=29940068&type=1" data-id="29940068" target="evaluateLayer" dataseetype="0" class="function-icon">
                            商品评价
                            <div class="function-icon_hover">
                                <p class="con">商品评价</p>
                            </div>
                        </a>
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=29940068&type=2" data-id="29940068" target="evaluateLayer" dataseetype="1" class="function-icon">
                            商品视频
                            <div class="function-icon_hover">
                                <p class="con">商品视频</p>
                            </div>
                        </a>
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=29940068&type=3" data-id="29940068" target="evaluateLayer" dataseetype="2" class="function-icon">
                            网友点评
                            <div class="function-icon_hover">
                                <p class="con">网友点评</p>
                            </div>
                        </a>
                    </div>
                </li>
                <li class="item">
                    <a href="http://www.zol.com/detail/cell_phone/huawei/29592412.html?skuId=10328342" target="_blank" class="pic">
                        <img src="http://i1.mercrt.fd.zol-img.com.cn/g5/M00/0D/09/ChMkJllV-7-IZZYvAABf2yizPvQAAdxnwCcmaEAAF_z881.jpg" alt="【送壳膜】Huawei/华为 nova 青春版全网通智能手机华为nova青春版" width="200" height="200">
                    </a>
                    <p class="ware-name">
                        <a href="http://www.zol.com/detail/cell_phone/huawei/29592412.html?skuId=10328342" target="_blank">【送壳膜】Huawei/华为 nova 青春版全网通智能手机华为nova青春版</a>
                    </p>
                    <p class="ware-msg">正品行货 全国联保 4G+64G</p>
                    <div class="price-info clearfix">
                        <p class="price">&yen;1499.00</p>
                        <p class="refer-price"><span class="tl">电商参考价:</span>&yen;1599.00</p>
                    </div>
                    <div class="ware-detail">
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=29592412&type=1" data-id="29592412" target="evaluateLayer" dataseetype="0" class="function-icon">
                            商品评价
                            <div class="function-icon_hover">
                                <p class="con">商品评价</p>
                            </div>
                        </a>
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=29592412&type=2" data-id="29592412" target="evaluateLayer" dataseetype="1" class="function-icon">
                            商品视频
                            <div class="function-icon_hover">
                                <p class="con">商品视频</p>
                            </div>
                        </a>
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=29592412&type=3" data-id="29592412" target="evaluateLayer" dataseetype="2" class="function-icon">
                            网友点评
                            <div class="function-icon_hover">
                                <p class="con">网友点评</p>
                            </div>
                        </a>
                    </div>
                </li>
                <li class="item">
                    <a href="http://www.zol.com/detail/cell_phone/xiaomi/29313136.html?skuId=10731738" target="_blank" class="pic">
                        <img src="http://i0.mercrt.fd.zol-img.com.cn/g5/M00/06/04/ChMkJlmAXmWIFYTTAABmPKbVlXAAAfUTgH4QZsAAGZU120.jpg" alt="【送手机壳+钢化膜】 小米 红米Note 4X（全网通）32G全网通4G手机" width="200" height="200">
                    </a>
                    <p class="ware-name">
                        <a href="http://www.zol.com/detail/cell_phone/xiaomi/29313136.html?skuId=10731738" target="_blank">【送手机壳+钢化膜】 小米 红米Note 4X（全网通）32G全网通4G手机</a>
                    </p>
                    <p class="ware-msg">3G+16G/3G+32G内存</p>
                    <div class="price-info clearfix">
                        <p class="price">&yen;779.00</p>
                        <p class="refer-price"><span class="tl">电商参考价:</span>&yen;899.00</p>
                    </div>
                    <div class="ware-detail">
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=29313136&type=1" data-id="29313136" target="evaluateLayer" dataseetype="0" class="function-icon">
                            商品评价
                            <div class="function-icon_hover">
                                <p class="con">商品评价</p>
                            </div>
                        </a>
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=29313136&type=2" data-id="29313136" target="evaluateLayer" dataseetype="1" class="function-icon">
                            商品视频
                            <div class="function-icon_hover">
                                <p class="con">商品视频</p>
                            </div>
                        </a>
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=29313136&type=3" data-id="29313136" target="evaluateLayer" dataseetype="2" class="function-icon">
                            网友点评
                            <div class="function-icon_hover">
                                <p class="con">网友点评</p>
                            </div>
                        </a>
                    </div>
                </li>
                <li class="item">
                    <a href="http://www.zol.com/detail/cell_phone/apple/28702506.html?skuId=11951614" target="_blank" class="pic">
                        <img src="http://i3.mercrt.fd.zol-img.com.cn/g5/M00/0D/09/ChMkJllV_DOICjp-AABtCsNjpB8AAdxoAFNO1MAAG0i283.jpg" alt="原封国行 苹果 iPhone 6（全网通）32G版4.7英寸 支持门店自提" width="200" height="200">
                    </a>
                    <p class="ware-name">
                        <a href="http://www.zol.com/detail/cell_phone/apple/28702506.html?skuId=11951614" target="_blank">原封国行 苹果 iPhone 6（全网通）32G版4.7英寸 支持门店自提</a>
                    </p>
                    <p class="ware-msg">原封未激活 32G版</p>
                    <div class="price-info clearfix">
                        <p class="price">&yen;2499.00</p>
                        <p class="refer-price"><span class="tl">电商参考价:</span>&yen;2208.00</p>
                    </div>
                    <div class="ware-detail">
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=28702506&type=1" data-id="28702506" target="evaluateLayer" dataseetype="0" class="function-icon">
                            商品评价
                            <div class="function-icon_hover">
                                <p class="con">商品评价</p>
                            </div>
                        </a>
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=28702506&type=2" data-id="28702506" target="evaluateLayer" dataseetype="1" class="function-icon">
                            商品视频
                            <div class="function-icon_hover">
                                <p class="con">商品视频</p>
                            </div>
                        </a>
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=28702506&type=3" data-id="28702506" target="evaluateLayer" dataseetype="2" class="function-icon">
                            网友点评
                            <div class="function-icon_hover">
                                <p class="con">网友点评</p>
                            </div>
                        </a>
                    </div>
                </li>
            </ul>
            <ul class="citywide-banner_list clearfix">
                <li class="item">
                    <a href="http://www.zol.com/detail/cell_phone/GreenOrange/30496431.html" target="_blank">
                        <img src="http://i4.mercrt.fd.zol-img.com.cn/g5/M00/01/00/ChMkJ1oEHWOIci2KAADUpdCR5mcAAh-6wJYXZIAANS9314.png" alt="" width="398" height="200">
                    </a>
                </li>
                <li class="item">
                    <a href="http://www.zol.com/detail/cell_phone/gionee/30011204.html" target="_blank">
                        <img src="http://i0.mercrt.fd.zol-img.com.cn/g5/M00/01/00/ChMkJloEHbyIGjo6AABHdnKf4wgAAh-7AC6HK8AAEeO766.jpg" alt="" width="398" height="200">
                    </a>
                </li>
                <li class="item">
                    <a href="http://www.zol.com/detail/cell_phone/meitu/29341442.html" target="_blank">
                        <img src="http://i1.mercrt.fd.zol-img.com.cn/g5/M00/01/00/ChMkJloEHgCIC9ArAAA9EKjWYe8AAh-7ANLmoAAAD0o271.jpg" alt="" width="398" height="200">
                    </a>
                </li>
            </ul>
            <ul class="citywide-ware_list clearfix">
                <li class="item">
                    <a href="http://www.zol.com/detail/cell_phone/rongyao/30011176.html?skuId=11488143" target="_blank" class="pic">
                        <img src="http://i0.mercrt.fd.zol-img.com.cn/g5/M00/06/0B/ChMkJlmBe1SIPtVNAABHfAvnJogAAfV9AC9eeQAAEeU166.jpg" alt="荣耀 9（STF-AL00/4GB RAM/全网通）" width="200" height="200">
                    </a>
                    <p class="ware-name">
                        <a href="http://www.zol.com/detail/cell_phone/rongyao/30011176.html?skuId=11488143" target="_blank">荣耀 9（STF-AL00/4GB RAM/全网通）</a>
                    </p>
                    <p class="ware-msg">新品上市 现货包邮 荣耀 9（STF-AL00/4GB RAM/全网通）美的有声有色！</p>
                    <div class="price-info clearfix">
                        <p class="price">&yen;2499.00</p>
                        <p class="refer-price"><span class="tl">电商参考价:</span>&yen;2299.00</p>
                    </div>
                    <div class="ware-detail">
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=30011176&type=1" data-id="30011176" target="evaluateLayer" dataseetype="0" class="function-icon">
                            商品评价
                            <div class="function-icon_hover">
                                <p class="con">商品评价</p>
                            </div>
                        </a>
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=30011176&type=2" data-id="30011176" target="evaluateLayer" dataseetype="1" class="function-icon">
                            商品视频
                            <div class="function-icon_hover">
                                <p class="con">商品视频</p>
                            </div>
                        </a>
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=30011176&type=3" data-id="30011176" target="evaluateLayer" dataseetype="2" class="function-icon">
                            网友点评
                            <div class="function-icon_hover">
                                <p class="con">网友点评</p>
                            </div>
                        </a>
                    </div>
                </li>
                <li class="item">
                    <a href="http://www.zol.com/detail/cell_phone/huawei/29794305.html?skuId=10941363" target="_blank" class="pic">
                        <img src="http://i2.mercrt.fd.zol-img.com.cn/g5/M00/06/0B/ChMkJ1mBe4uINaHuAAA7ltGcqe4AAfV9AJgDIcAADuu408.jpg" alt="新品上市 顺丰包邮华为 畅享7 Plus（TRT-AL00/3GB RAM/全网通）" width="200" height="200">
                    </a>
                    <p class="ware-name">
                        <a href="http://www.zol.com/detail/cell_phone/huawei/29794305.html?skuId=10941363" target="_blank">新品上市 顺丰包邮华为 畅享7 Plus（TRT-AL00/3GB RAM/全网通）</a>
                    </p>
                    <p class="ware-msg">畅享7 Plus（TRT-AL00/3GB RAM/全网通）玩到爽 快到爽</p>
                    <div class="price-info clearfix">
                        <p class="price">&yen;1299.00</p>
                        <p class="refer-price"><span class="tl">电商参考价:</span>&yen;1299.00</p>
                    </div>
                    <div class="ware-detail">
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=29794305&type=1" data-id="29794305" target="evaluateLayer" dataseetype="0" class="function-icon">
                            商品评价
                            <div class="function-icon_hover">
                                <p class="con">商品评价</p>
                            </div>
                        </a>
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=29794305&type=2" data-id="29794305" target="evaluateLayer" dataseetype="1" class="function-icon">
                            商品视频
                            <div class="function-icon_hover">
                                <p class="con">商品视频</p>
                            </div>
                        </a>
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=29794305&type=3" data-id="29794305" target="evaluateLayer" dataseetype="2" class="function-icon">
                            网友点评
                            <div class="function-icon_hover">
                                <p class="con">网友点评</p>
                            </div>
                        </a>
                    </div>
                </li>
                <li class="item">
                    <a href="http://www.zol.com/detail/cell_phone/oppo/29350170.html?skuId=10742747" target="_blank" class="pic">
                        <img src="http://i0.mercrt.fd.zol-img.com.cn/g5/M00/06/09/ChMkJ1mBOyiIVp4nAAAtuJkwleUAAfVogEeeYsAAC3Q020.jpg" alt="OPPO A57（全网通）" width="200" height="200">
                    </a>
                    <p class="ware-name">
                        <a href="http://www.zol.com/detail/cell_phone/oppo/29350170.html?skuId=10742747" target="_blank">OPPO A57（全网通）</a>
                    </p>
                    <p class="ware-msg">OPPO A57（全网通）1600万美颜自拍</p>
                    <div class="price-info clearfix">
                        <p class="price">&yen;1366.00</p>
                        <p class="refer-price"><span class="tl">电商参考价:</span>&yen;1299.00</p>
                    </div>
                    <div class="ware-detail">
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=29350170&type=1" data-id="29350170" target="evaluateLayer" dataseetype="0" class="function-icon">
                            商品评价
                            <div class="function-icon_hover">
                                <p class="con">商品评价</p>
                            </div>
                        </a>
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=29350170&type=2" data-id="29350170" target="evaluateLayer" dataseetype="1" class="function-icon">
                            商品视频
                            <div class="function-icon_hover">
                                <p class="con">商品视频</p>
                            </div>
                        </a>
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=29350170&type=3" data-id="29350170" target="evaluateLayer" dataseetype="2" class="function-icon">
                            网友点评
                            <div class="function-icon_hover">
                                <p class="con">网友点评</p>
                            </div>
                        </a>
                    </div>
                </li>
                <li class="item">
                    <a href="http://www.zol.com/detail/cell_phone/vivo/29347769.html?skuId=10746278" target="_blank" class="pic">
                        <img src="http://i0.mercrt.fd.zol-img.com.cn/g5/M00/06/04/ChMkJlmAWTiIfQsbAAA4ANScZNIAAfUQwOcmisAADgY416.jpg" alt="vivo Y67（全网通）" width="200" height="200">
                    </a>
                    <p class="ware-name">
                        <a href="http://www.zol.com/detail/cell_phone/vivo/29347769.html?skuId=10746278" target="_blank">vivo Y67（全网通）</a>
                    </p>
                    <p class="ware-msg">vivo Y67（全网通）1600万柔光自拍照亮你的美</p>
                    <div class="price-info clearfix">
                        <p class="price">&yen;1698.00</p>
                        <p class="refer-price"><span class="tl">电商参考价:</span>&yen;1798.00</p>
                    </div>
                    <div class="ware-detail">
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=29347769&type=1" data-id="29347769" target="evaluateLayer" dataseetype="0" class="function-icon">
                            商品评价
                            <div class="function-icon_hover">
                                <p class="con">商品评价</p>
                            </div>
                        </a>
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=29347769&type=2" data-id="29347769" target="evaluateLayer" dataseetype="1" class="function-icon">
                            商品视频
                            <div class="function-icon_hover">
                                <p class="con">商品视频</p>
                            </div>
                        </a>
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=29347769&type=3" data-id="29347769" target="evaluateLayer" dataseetype="2" class="function-icon">
                            网友点评
                            <div class="function-icon_hover">
                                <p class="con">网友点评</p>
                            </div>
                        </a>
                    </div>
                </li>
                <li class="item">
                    <a href="http://www.zol.com/detail/cell_phone/huawei/30154513.html?skuId=11325852" target="_blank" class="pic">
                        <img src="http://i1.mercrt.fd.zol-img.com.cn/g5/M00/06/04/ChMkJlmAWgiIGapEAAA1YyptDysAAfURQE2ebkAADV7711.jpg" alt="华为 nova 2 Plus（全网通）" width="200" height="200">
                    </a>
                    <p class="ware-name">
                        <a href="http://www.zol.com/detail/cell_phone/huawei/30154513.html?skuId=11325852" target="_blank">华为 nova 2 Plus（全网通）</a>
                    </p>
                    <p class="ware-msg">华为 nova 2 Plus（全网通）高颜值 爱自拍！前置2000万高颜值自拍！</p>
                    <div class="price-info clearfix">
                        <p class="price">&yen;2499.00</p>
                        <p class="refer-price"><span class="tl">电商参考价:</span>&yen;2399.00</p>
                    </div>
                    <div class="ware-detail">
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=30154513&type=1" data-id="30154513" target="evaluateLayer" dataseetype="0" class="function-icon">
                            商品评价
                            <div class="function-icon_hover">
                                <p class="con">商品评价</p>
                            </div>
                        </a>
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=30154513&type=2" data-id="30154513" target="evaluateLayer" dataseetype="1" class="function-icon">
                            商品视频
                            <div class="function-icon_hover">
                                <p class="con">商品视频</p>
                            </div>
                        </a>
                        <a href="/index.php?c=IndexNew&a=GetEvaluateLayer&goodsId=30154513&type=3" data-id="30154513" target="evaluateLayer" dataseetype="2" class="function-icon">
                            网友点评
                            <div class="function-icon_hover">
                                <p class="con">网友点评</p>
                            </div>
                        </a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="footer">
    <div class="wrapper">
        <ul class="footer-service clearfix">
            <li class="ser-bg1"> <a href="http://help.zol.com/index.php?c=List&amp;subClassId=34&amp;grandClassId=146" target="_blank">
                    <p class="top">先行赔付</p>
                    <p class="below">权益受损先行赔付</p>
                </a> </li>
            <li class="ser-bg2"> <a href="http://help.zol.com/index.php?c=List&amp;subClassId=34&amp;grandClassId=146" target="_blank">
                    <p class="top">正品保障</p>
                    <p class="below">正规渠道售后有保障</p>
                </a> </li>
            <li class="ser-bg3"> <a href="http://help.zol.com/index.php?c=List&amp;subClassId=34&amp;grandClassId=146" target="_blank">
                    <p class="top">无忧退换</p>
                    <p class="below">严格按照消法处理</p>
                </a> </li>
            <li class="ser-bg4"> <a href="http://help.zol.com/index.php?c=List&amp;subClassId=34&amp;grandClassId=146" target="_blank">
                    <p class="top">发票保障</p>
                    <p class="below">售卖商品可提供发票</p>
                </a> </li>
            <li class="ser-bg5"> <a href="http://help.zol.com/index.php?c=List&amp;subClassId=34&amp;grandClassId=146" target="_blank">
                    <p class="top">快递包邮</p>
                    <p class="below">满399快递包邮</p>
                </a> </li>
            <li class="ser-bg6"> <a href="http://help.zol.com/index.php?c=List&amp;subClassId=34&amp;grandClassId=146" target="_blank">
                    <p class="top">急速发货</p>
                    <p class="below">24小时内发货</p>
                </a> </li>
        </ul>
        <div class="footer-service-relate clearfix">
            <dl class="cooperation">
                <dt>招商合作</dt>
                <dd>
                    <p>助力3C零售商互联网转型</p>
                    <p>开启新零售时代全新旅程！</p>
                    <a href="http://www.rongroad.com/" class="btn" target="_blank"><span>查看详细</span>&gt;</a>
                </dd>
            </dl>
            <dl class="hotline">
                <dt>400-688-1999</dt>
                <dd>
                    <p>工作日 9:00 - 18:00</p>
                    <!--                            <a target="_blank" class="weibo" href="http://weibo.com/zolcom">关注新浪微博</a>-->
                </dd>
            </dl>
            <dl>
                <dt>购物指南</dt>
                <dd>
                    <p><a href="http://help.zol.com/index.php?c=Detail&id=1126" target="_blank">帐号注册</a></p>
                    <p><a href="http://help.zol.com/index.php?c=Detail&id=1127" target="_blank">购物流程</a></p>
                    <p><a href="http://help.zol.com/index.php?c=Detail&id=1228" target="_blank">付款方式</a></p>

                </dd>
            </dl>
            <dl>
                <dt>售后服务</dt>
                <dd>
                    <p><a href="http://help.zol.com/index.php?c=Detail&id=1171" target="_blank">先行赔付</a></p>
                    <p><a href="http://help.zol.com/index.php?c=Detail&id=1128" target="_blank">退款退货流程</a></p>
                    <p><a href="http://help.zol.com/index.php?c=Detail&id=1129" target="_blank">投诉举报</a></p>

                </dd>
            </dl>
            <dl>
                <dt>商城保障</dt>
                <dd>
                    <p><a href="http://help.zol.com/index.php?c=Detail&id=1170" target="_blank">正品保障</a></p>
                    <p><a href="http://help.zol.com/index.php?c=Detail&id=1174" target="_blank">物流配送</a></p>
                    <p><a href="http://help.zol.com/index.php?c=Detail&id=1173" target="_blank">24小时发货</a></p>
                    <p><a href="http://help.zol.com/index.php?c=Detail&id=1175" target="_blank">发票保障</a></p>

                </dd>
            </dl>
            <dl>
                <dt>商家服务</dt>
                <dd>
                    <p><a href="https://login.zol.com/" target="_blank">商家中心</a></p>

                </dd>
            </dl>
        </div>
    </div>
    <div class="footer-nav-bar">
        <div class="wrapper">
            <!-- <div class="partners" style="height:auto;"> <span class="label">合作伙伴：</span>  -->
            <!--<span class="more more-open">更多</span>-->
            <!--        <p> <a href="http://www.vmall.com" target="_blank">华为商城</a>| <a href="http://www.juanpi.com/" target="_blank">卷皮网</a>| <a href="http://www.99114.com/" target="_blank">电子商务平台</a>| <a href="http://www.cebnet.com.cn/" target="_blank">中国电子银行网</a>| <a href="http://www.301688.com" target="_blank">三帝贸易网</a>| <a href="http://www.pztuan.com/index.aspx" target="_blank">团购</a>| <a href="http://shop.enet.com.cn/" target="_blank">eNet商城</a>| <a href="http://www.meilele.com/" target="_blank">家具网</a>| <a href="http://www.wbiao.cn/" target="_blank">手表品牌大全</a>| <a href="http://www.dionly.com/" target="_blank">钻石</a>| <a href="http://www.yxlady.com/" target="_blank">伊秀女性网</a>| <a href="http://www.eepw.com.cn" target="_blank">电子产品世界</a>| <a href="http://www.wadongxi.com" target="_blank">挖东西比价网</a>| <a href="http://www.egou.com" target="_blank">易购网</a>| <a href="http://www.hqew.com/" target="_blank">华强电子网</a>| <a href="http://www.admaimai.com" target="_blank">广告网</a>| <a href="http://54114.com" target="_blank">网上114</a>| </p>
            </div> -->
            <div class="footer-nav">
                <a href="http://www.zol.com.cn/" target="_blank">中关村在线</a> | <a href="http://www.zol.com/" target="_blank">Z商城</a> | <a href="http://tuan.zol.com/" target="_blank">团购</a> | <a href="http://detail.zol.com.cn/" target="_blank">产品报价</a> | <a href="http://bbs.zol.com.cn/" target="_blank">论坛</a> | <a href="http://ask.zol.com.cn/" target="_blank">问答</a>                		</div>
            <div class="copyright">
                <a href="http://help.zol.com/index.php?c=Detail&id=1254" target="_blank">关于Z商城</a> | <a href="http://help.zol.com/index.php?c=Default" target="_blank">帮助中心</a> | <a href="http://help.zol.com/index.php?c=Detail&id=1256" target="_blank">联系我们</a>                        </div>
            <div class="copyright">
                                <span style="margin-left:-5px;">
                                    &copy;2017 中关村在线 版权所有. <a href="http://icon.zol.com.cn/icp.jpg" target="_blank">京ICP证150096号</a>京ICP备14061128号<a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010802020026" target="_blank">京公网安备11010802020026号</a><a href="http://icon.zol.com.cn/wangwen.jpg" target="_blank">网络文化经营许可证京网文[2016]1631-199</a>                                </span>
            </div>
            <div class="focus-area clearfix">
                <div class="wechat"><img src="http://icon.zol-img.com.cn/newshop/shop/index/qr.png" width="100" height="100" alt=""/></div>
                <a target="_blank" class="weibo" href="http://weibo.com/zolcom">关注新浪微博</a>
            </div>
        </div>
        <a style="color:#fff;background:#666;border-radius:3px;-webkit-border-radius:3px;float:right;margin-right:50px;padding:0 8px;">广告</a> </div>
</div>
<script type="text/javascript">
    var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
    document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F7daf617aaf843f0f55a422b00d7de1e7' type='text/javascript'%3E%3C/script%3E"));
</script>




<div class="search-fixed" id="search_layer_fixed">
    <div class="wrapper clearfix">
        <h1 class="logo"><a href="http://www.zol.com/">Z商城</a></h1>
        <div href="#" class="city-location">
            <span href="javascript" class="city-name">郑州<em class="icon"></em></span>
            <ul class="city-list">
                <li><a href="/index.php?c=IndexNew&city=beijing">北京</a></li>
                <li><a href="/index.php?c=IndexNew&city=chengdu">成都</a></li>
                <li><a href="/index.php?c=IndexNew&city=qingdao">青岛</a></li>
                <li><a href="/index.php?c=IndexNew&city=xian">西安</a></li>
                <li><a class="cur" href="/index.php?c=IndexNew&city=zhengzhou">郑州</a></li>
                <li><a href="/index.php?c=IndexNew&city=shijiazhuang">石家庄</a></li>
                <li><a href="/index.php?c=IndexNew&city=pingdingshan">平顶山</a></li>
                <li><a href="/index.php?c=IndexNew&city=shanghai">上海</a></li>
                <li><a href="/index.php?c=IndexNew&city=deyang">德阳</a></li>
                <li><a href="/index.php?c=IndexNew&city=handan">邯郸</a></li>
                <li><a href="/index.php?c=IndexNew&city=xingtai">邢台</a></li>
                <li><a href="/index.php?c=IndexNew&city=qinhuangdao">秦皇岛</a></li>
                <li><a href="/index.php?c=IndexNew&city=hengshui">衡水</a></li>
                <li><a href="/index.php?c=IndexNew&city=cangzhou">沧州</a></li>
                <li><a href="/index.php?c=IndexNew&city=chengde">承德</a></li>
                <li><a href="/index.php?c=IndexNew&city=tangshan">唐山</a></li>
                <li><a href="/index.php?c=IndexNew&city=kaifeng">开封</a></li>
                <li><a href="/index.php?c=IndexNew&city=zhumadian">驻马店</a></li>
                <li><a href="/index.php?c=IndexNew&city=anyang">安阳</a></li>
                <li><a href="/index.php?c=IndexNew&city=xinxiang">新乡</a></li>
                <li><a href="/index.php?c=IndexNew&city=langfang">廊坊</a></li>
                <li><a href="/index.php?c=IndexNew&city=baoding">保定</a></li>
                <li><a href="/index.php?c=IndexNew&city=quanguo">全国</a></li>
            </ul>
        </div>
        <div class="quick-entry">
            <a href="http://order.zol.com/index.php?c=Cart" class="cart">购物车<i class="ico"></i><em class="number">2</em></a>
            <a href="http://my.zol.com/index.php?c=Coupon&a=ShopCoupon" class="coupon">我的优惠券<i class="ico"></i></a>
            <a href="http://my.zol.com/index.php?c=OrderManage" class="order">我的订单<i class="ico"></i></a>
        </div>
        <div class="search-box">
            <form action="http://www.zol.com/index.php" method="get">
                <input type="hidden" name="c" value="List">
                <div class="search">
                    <input name="keyword" type="text" class="search-text" autocomplete="off" placeholder="找找您想要的商品">
                    <input type="submit" value="搜索" class="search-btn" hidefocus="true">
                    <!-- 搜索热词 搜索推荐 -->
                    <div class="search-hot-words" id="noresearch_keyword">
                        <a href="http://1212.zol.com?spm=914" target="_blank" title="年终盛典 钜惠狂欢">年终盛典 钜惠狂欢</a>
                        <a href="http://www.zol.com/index.php?c=List&keyword=%C8%FD%D0%C7note8&spm=921&spm=914" target="_blank" title="三星Note8">三星Note8</a>
                    </div>

                    <!-- end  -->
                </div>
                <input type="hidden" name="spm" value="921">
            </form>
        </div>
    </div>
</div>

<div id="J_fixedNavBar" class="fixed-nav-bar">
    <a href="javascript:;" class="floor">团购</a>
    <a href="javascript:;" class="floor">领券中心</a>
    <!--        <a href="javascript:;" class="floor">到店玩</a>-->
    <a href="javascript:;" class="floor">同城购</a>        <a href="javascript:;" class="floor">Z智选</a>
    <a href="javascript:;" class="floor">品牌精选</a>
    <a href="javascript:;" class="floor">电子竞技</a>
    <a href="javascript:;" class="floor">数码潮品</a>
    <a href="javascript:;" class="floor">本周热销</a>
    <a class="back-top" href="javascript:;">回顶部<span class="trangle"></span></a>
</div>

<!-- 评价弹层 -->
<div style="display: none;" class="evaluate-layer">

    <span class="opacity-border"></span>
    <div class="evaluate-layer_main">
        <div class="evaluate-layer_hd">
            <span class="close-btn">×</span>
            <h4 class="tl"></h4>
            <ul class="evaluate-hd_tab">
                <li class="tab-btn cur"><a id="articleTab" href="" target="evaluateLayer">评测</a></li>
                <li class="tab-btn"><a id="videoTab" href="" target="evaluateLayer">视频</a></li>
                <li class="tab-btn"><a id="evaluateTab" href="" target="evaluateLayer">点评</a></li>
            </ul>
        </div>
        <div class="evaluate-layer_con">
            <iframe name="evaluateLayer" width="790" height="500" scrolling="no" style="border:0 none"></iframe>
        </div>
    </div>
</div>
<div class="zs-layer-box" style="display:none;" id="get-coupon-success-box">
    <div class="zs-layer-body">
        <div class="zs-layer-hd"><i onClick="$.closeWindowBox('get-coupon-success-box')" class="zs-close"></i></div>
        <div class="zs-layer-content">
            <div class="zs-success">
                <h3>领取优惠券成功</h3>
                <p>使用时间:17.05.08 - 17.05.15</p>
            </div>
        </div>
    </div>
</div>

<div class="zs-layer-box" style="display:none;" id="get-coupon-failed-box">
    <div class="zs-layer-body">
        <div class="zs-layer-hd"><i onclick="$.closeWindowBox('get-coupon-failed-box')" class="zs-close"></i></div>
        <div class="zs-layer-content">
            <div class="zs-failure">
                <h3>领取优惠券失败</h3>
                <p>失败原因</p>
            </div>
        </div>
    </div>
</div>
<div id="_j_11_trigger" class="foot-activity-btn"></div>
<div id="_j_11_box" class="foot-activity-layer">
    <div class="wrapper"><span class="close"></span></div>
    <a class="layer-bg" href="http://1212.zol.com/"></a>
</div>

<div class="zc-side-toolbar-box" id="side-toolbar-wrapper" data-url="/index.php?c=Ajax_RightSidebar">
    <div class="zc-toolbar-tabbar">
        <!--<div class="zc-operation-tabbox activity-bb" id="operation_region">-->
        <div class="zc-operation-tabbox" id="operation_region">
            <!--6.18包版 add by ywd-->
            <!--            <div class="activity-entrance">
                    <a href="http://6.zol.com" class="logo-links" target="_blank">ZOL商城6.18数码狂欢派</a>
                            <a href="http://6.zol.com" class="main-venue-links" target="_blank">6.18.主会场</a>
                            <a href="http://6.zol.com" class="main-venue-links" target="_blank">6.18.主会场</a>

                    <a href=# class="coupon-links" target="_blank">我的优惠劵</a>
                        </div>  -->
            <!-- QQ -->
            <div class="zc-qq" style="display:none">    <!--  zc-qq-hover -->
                <div class="zc-qq-ico"></div>
                <div class="zc-qq-layer">
                    <i class="zc-triangle"></i>
                    <i class="zc-close"></i>
                    <div class="zc-shop-name">点沸数码点沸数码点…</div>
                    <ul>
                        <li>
                            <a href="http://wpa.qq.com/msgrd?v=3&amp;uin=1029884265&amp;site=qq&amp;menu=yes" target="_blank"><img border="0" title="点击这里给我发消息" alt="点击这里给我发消息" src="http://wpa.qq.com/pa?p=2:1029884265:52"></a><span>店长</span>
                        </li>
                        <li>
                            <a href="http://wpa.qq.com/msgrd?v=3&amp;uin=1029884265&amp;site=qq&amp;menu=yes" target="_blank"><img border="0" title="点击这里给我发消息" alt="点击这里给我发消息" src="http://wpa.qq.com/pa?p=2:1029884265:52"></a><span>店长</span>
                        </li>
                        <li>
                            <a href="http://wpa.qq.com/msgrd?v=3&amp;uin=1029884265&amp;site=qq&amp;menu=yes" target="_blank"><img border="0" title="点击这里给我发消息" alt="点击这里给我发消息" src="http://wpa.qq.com/pa?p=2:1029884265:52"></a><span>店长</span>
                        </li>
                    </ul>
                </div>
            </div>

            <!-- 订单 -->
            <div class="zc-tab-order" data-tips="我的订单" data-role="OrderInfo">   <!--  zc-tab-hover -->
                <div class="zc-tab-ico"></div>
            </div>

            <!-- 关注 -->
            <div class="zc-tab-attention" data-role="attention" style="display:none;">  <!--  zc-tab-hover -->
                <div class="zc-attention-border">
                    <div class="zc-tab-ico"></div>
                    <div class="zc-tab-txt">我的关注</div>
                </div>

                <!-- 消息通知层 -->
                <div class="zc-success-attention" style="display:none">
                    <i class="zc-triangle"></i>
                    <i class="zc-close"></i>
                    <div class="zc-title">成功加入我的关注</div>
                    <p>您可以查看<a href="#">我的关注</a></p>
                </div>

            </div>

            <!-- 足迹 -->
            <div class="zc-tab-footprint" data-tips="我的足迹" data-role="BrowseHistroy">   <!--  zc-tab-hover -->
                <div class="zc-tab-ico"></div>
            </div>

            <!-- 购物车 -->
            <div class="zc-tab-cart" data-tips="购物车" data-role="ShopCart">  <!--  zc-tab-hover -->
                <div class="zc-tab-ico"></div>
                <span class="zc-number" id="cart-total">5</span>

                <!-- 消息通知层 -->
                <div class="zc-success-attention" id="toast" style="display:none">
                    <i class="zc-triangle"></i>
                    <i class="zc-close"></i>
                    <div class="zc-title">成功加入购物车</div>
                    <p>您可以去<a href="#">购物车结算</a></p>
                </div>

            </div>
            <!-- 优惠券 -->
            <div class="zc-tab-coupons" data-tips="优惠券" data-role="UserCoupon"> <!--  zc-tab-hover -->
                <div class="xhd"></div>
                <div class="zc-tab-ico"></div>
            </div>
        </div>
        <div class="zc-toolbar-tool" id="show_region">

            <!-- 关注 -->
            <!--  zc-attention-click -->
            <div class="zc-attention-bar" style="display:none;">
                <div class="zc-attention-ico"></div>
                <div class="zc-attention-layer">
                    <i class="zc-triangle"></i>
                    <i class="zc-close"></i>
                    <div class="zc-title">活动关注成功！</div>
                </div>
            </div>

            <!-- 分享 -->
            <!--  zc-share-bar-hover -->
            <div class="zc-share-bar" style="display:none;">
                <div class="zc-share-ico"></div>
                <div class="zc-share-layer">
                    <i class="zc-triangle"></i>
                    <div class="bdsharebuttonbox bdshare_t bds_tools get-codes-bdshare bdshare-button-style0-16" id="bdshare" data-bd-bind="1403577164954">
                        <a data-cmd="tsina" class="bds_tsina" title="分享到新浪微博"></a>
                        <a data-cmd="qzone" class="bds_qzone" title="分享到QQ空间"></a>
                        <a data-cmd="tqq" class="bds_tqq" title="分享到腾讯微博"></a>
                        <a data-cmd="sqq" class="bds_sqq" title="分享到QQ"></a>
                        <a data-cmd="weixin" class="bds_weixin" title="分享到微信"></a>
                    </div>
                </div>
            </div>

            <!-- 建议 -->
            <!--            <a href="http://service.zol.com.cn/complain/" class="zc-feedback" target="blank">建议反馈</a>-->

            <!-- 二维码 -->
            <!-- zc-phone-login-hover -->
            <div class="zc-phone-login" style="display:none;">
                <i class="zc-ico"></i>
                <div class="zc-layer">
                    <i class="zc-triangle"></i>
                    <img width="150" height="150" src="http://active.zol.com.cn/09active/front_end/images/photo.jpg" alt="">
                    <div class="zc-title">登录手机商城</div>
                    <div class="zc-subtitle">享受不一样的购物体验</div>
                </div>
            </div>
            <!-- 返回顶部 -->
            <a href="#" class="zc-backtop"></a>
        </div>
    </div>

    <!-- Hover Tips -->
    <div class="zc-tab-tips" id="hover_tips"></div>

    <!-- 右侧切换层 -->
    <div class="zc-toolbar-plugins">

        <!-- 我的订单 -->
        <div class="zc-toolbar-plugin">
            <div class="zc-toolbar-plugin-hd">
                <div class="zc-toolbar-plugin-title">我的订单</div>
                <div class="zc-toolbar-plugin-close"></div>
            </div>
            <div class="zc-toolbar-plugin-bd">
                <div class="zc-scroll-bd">
                    <ul class="zc-order-list" data-contains="OrderInfo"></ul>
                </div>
                <div class="zc-view-all"><a href="http://my.zol.com/index.php?c=OrderManage"><span>查看全部</span>&gt;&gt;</a></div>
            </div>
        </div>
        <!-- //我的订单 -->

        <!-- 我的足迹 -->
        <div class="zc-toolbar-plugin zc-footprint-box">
            <div class="zc-toolbar-plugin-hd">
                <div class="zc-toolbar-plugin-title">我的足迹</div>
                <div class="zc-toolbar-plugin-close"></div>
            </div>
            <div class="zc-toolbar-plugin-bd">
                <div class="zc-footprint-hd">
                    <div class="zc-tips">在这里可以查看您的浏览记录</div>
                </div>
                <div class="zc-scroll-bd">
                    <div data-contains="BrowseHistroy">
                        <div class="zc-number">
                            共<em id="history-total">13</em>件商品<span class="zc-remove-btn">清空</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //我的足迹 -->

        <!-- 购物车 -->
        <div class="zc-toolbar-plugin zc-cart-box">
            <div class="zc-toolbar-plugin-hd">
                <div class="zc-toolbar-plugin-title">购物车</div>
                <div class="zc-toolbar-plugin-close"></div>
                <a href="http://order.zol.com/index.php?c=Cart" class="zc-all-links">全部&gt;&gt;</a>
            </div>
            <div class="zc-toolbar-plugin-bd">
                <div class="zc-scroll-bd">
                    <ul class="zc-cart-list" data-contains="ShopCart"></ul>
                </div>
            </div>
        </div>
        <!-- //购物车 -->
        <!-- 我的优惠券 -->
        <div class="zc-toolbar-plugin zc-coupons-box" data-change="current" style="opacity: 1; transform: scale(1); top: 0px;">
            <div class="zc-toolbar-plugin-hd">
                <div class="zc-toolbar-plugin-title">我的优惠券</div>
                <div class="zc-toolbar-plugin-close"></div>
            </div>
            <div class="zc-toolbar-plugin-bd">
                <div class="zc-scroll-bd ps-container" style="height: 877px;">
                    <ul class="zc-coupons-list" data-contains="UserCoupon">
                        <li class="finish">
                            <div class="coupons">
                                <div class="amount">&yen;<span>500</span></div>
                                <div class="aging">16.10.01~16.10.07</div>
                                <div class="usage"><span>部分商品</span>|<span>满1900使用</span></div>
                            </div>
                            <div class="store-links"><a href="#">沸点数码&nbsp;&nbsp;&nbsp;&nbsp;进店看看&gt;</a></div>
                        </li>
                        <li>
                            <div class="coupons">
                                <div class="amount">&yen;<span>500</span></div>
                                <div class="aging">16.10.01~16.10.07</div>
                                <div class="usage"><span>部分商品</span>|<span>满1900使用</span></div>
                            </div>
                            <div class="store-links"><a href="#">爱科生活官方旗舰店&nbsp;&nbsp;&nbsp;&nbsp;进店看看&gt;</a></div>
                        </li>
                        <li>
                            <div class="coupons">
                                <div class="amount">&yen;<span>500</span></div>
                                <div class="aging">16.10.01~16.10.07</div>
                                <div class="usage"><span>部分商品</span>|<span>满1900使用</span></div>
                            </div>
                            <div class="store-links"><a href="#">沸点数码</a></div>
                        </li>
                    </ul>
                </div>
                <!--
                <div class="zc-view-all"><a href="http://my.zol.com/index.php?c=OrderManage"><span>查看全部</span>&gt;&gt;</a></div>
                -->
            </div>
        </div>
        <!-- 我的优惠券 -->
        <!-- 我的关注 -->
        <div class="zc-toolbar-plugin zc-attention-box" style="display:none;">
            <div class="zc-toolbar-plugin-hd">
                <div class="zc-toolbar-plugin-title">我的关注</div>
                <div class="zc-toolbar-plugin-close"></div>
            </div>
            <div class="zc-toolbar-plugin-bd">
                <ul class="zc-tabbar clearfix">
                    <li>商品<em>(134)</em></li>
                    <li>活动<em>(0)</em></li>
                    <li class="zc-current">店铺<em>(11)</em></li>
                </ul>
                <!-- 商品 -->
                <div class="zc-goods-box">
                    <div class="zc-empty-box" style="display:none;">
                        <p>在这里，可随时看到关注的商品</p>
                        <p>记得关注您心仪的商品哟~</p>
                    </div>
                    <div class="zc-goods-hd">
                        <div class="zc-goods-number">共关注了<em>13</em>件商品</div>
                        <div class="zc-goods-classify zc-goods-classify-trig ger">
                            <span class="zc-hd">分类</span>
                            <ul class="zc-classify-list clearfix">
                                <li><a href="#">手机(2)</a></li>
                                <li><a href="#">手机配件(2)</a></li>
                                <li><a href="#">笔记本(5)</a></li>
                                <li><a href="#">耳机(5)</a></li>
                                <li><a href="#">平板电脑(3)</a></li>
                                <li><a href="#">全部（17）</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="zc-scroll-bd" style="height:700px;">

                        <div class="zc-goods-item">
                            <div class="zc-time-show">当天</div>
                            <div class="zc-attention-goods">
                                <ul class="clearfix">
                                    <li>
                                        <a href="#" class="zc-pic">
                                            <img width="100" height="100" src="http://active.zol.com.cn/09active/front_end/images/photo.jpg" alt="">
                                            <span class="zc-price">&yen;2899</span>
                                        </a>
                                        <a href="#" class="zc-delete" style="display:block;"><i class="zc-ico"></i></a>
                                    </li>
                                    <li>
                                        <a href="#" class="zc-pic">
                                            <img width="100" height="100" src="http://active.zol.com.cn/09active/front_end/images/photo.jpg" alt="">
                                            <span class="zc-price">&yen;2899</span>
                                        </a>
                                        <a href="#" class="zc-delete"><i class="zc-ico"></i></a>
                                    </li>
                                    <li>
                                        <a href="#" class="zc-pic">
                                            <img width="100" height="100" src="http://active.zol.com.cn/09active/front_end/images/photo.jpg" alt="">
                                            <span class="zc-price">&yen;2899</span>
                                        </a>
                                        <a href="#" class="zc-delete"><i class="zc-ico"></i></a>
                                    </li>
                                    <li>
                                        <a href="#" class="zc-pic">
                                            <img width="100" height="100" src="http://active.zol.com.cn/09active/front_end/images/photo.jpg" alt="">
                                            <span class="zc-price">&yen;2899</span>
                                        </a>
                                        <a href="#" class="zc-delete"><i class="zc-ico"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="zc-goods-item">
                            <div class="zc-time-show">最近7天</div>
                            <div class="zc-attention-goods">
                                <ul class="clearfix">
                                    <li>
                                        <a href="#" class="zc-pic">
                                            <img width="100" height="100" src="http://active.zol.com.cn/09active/front_end/images/photo.jpg" alt="">
                                            <span class="zc-price">&yen;2899</span>
                                        </a>
                                        <a href="#" class="zc-delete" style="display:block;"><i class="zc-ico"></i></a>
                                    </li>
                                    <li>
                                        <a href="#" class="zc-pic">
                                            <img width="100" height="100" src="http://active.zol.com.cn/09active/front_end/images/photo.jpg" alt="">
                                            <span class="zc-price">&yen;2899</span>
                                        </a>
                                        <a href="#" class="zc-delete"><i class="zc-ico"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="zc-goods-item">
                            <div class="zc-time-show">一周前</div>
                            <div class="zc-attention-goods">
                                <ul class="clearfix">
                                    <li>
                                        <a href="#" class="zc-pic">
                                            <img width="100" height="100" src="http://active.zol.com.cn/09active/front_end/images/photo.jpg" alt="">
                                            <span class="zc-price">&yen;2899</span>
                                        </a>
                                        <a href="#" class="zc-delete"><i class="zc-ico"></i></a>
                                    </li>
                                    <li>
                                        <a href="#" class="zc-pic">
                                            <img width="100" height="100" src="http://active.zol.com.cn/09active/front_end/images/photo.jpg" alt="">
                                            <span class="zc-price">&yen;2899</span>
                                        </a>
                                        <a href="#" class="zc-delete"><i class="zc-ico"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="zc-view-all"><a href="#"><span>查看全部</span>&gt;&gt;</a></div>
                </div>
                <!-- //商品 -->

                <!-- 活动 -->
                <div class="zc-activity-box" style="display:none;">
                    <div class="zc-empty-box" style="display:none;">
                        <p>亲，您可能</p>
                        <p>还没有关注过我们的活动呢~</p>
                    </div>
                    <div class="zc-empty-box" style="display:none;">
                        <p>亲，虽然错过了</p>
                        <p>但我们还有更多活动等着您！</p>
                    </div>
                    <div class="zc-scroll-bd">

                        <ul class="zc-activity-list" style="height:700px;">
                            <li>
                                <div class="zc-hd">活动进行中…<i class="zc-cancel-btn"></i></div>
                                <div class="zc-activity-name">夏季办公室小家电推荐</div>
                                <div class="zc-activity-times">2015/5/19~2015/7/31</div>
                                <a href="#" class="zc-activity-button">进入活动</a>
                            </li>
                            <li>
                                <div class="zc-hd">活动进行中…<i class="zc-cancel-btn"></i></div>
                                <div class="zc-activity-name">夏季办公室小家电推荐</div>
                                <div class="zc-activity-times">2015/5/19~2015/7/31</div>
                                <a href="#" class="zc-activity-button">进入活动</a>
                            </li>
                            <li>
                                <div class="zc-hd">活动进行中…<i class="zc-cancel-btn"></i></div>
                                <div class="zc-activity-name">夏季办公室小家电推荐</div>
                                <div class="zc-activity-times">2015/5/19~2015/7/31</div>
                                <a href="#" class="zc-activity-button">进入活动</a>
                            </li>
                            <li>
                                <div class="zc-hd">活动进行中…<i class="zc-cancel-btn"></i></div>
                                <div class="zc-activity-name">夏季办公室小家电推荐</div>
                                <div class="zc-activity-times">2015/5/19~2015/7/31</div>
                                <a href="#" class="zc-activity-button">进入活动</a>
                            </li>
                            <li>
                                <div class="zc-hd">活动进行中…<i class="zc-cancel-btn"></i></div>
                                <div class="zc-activity-name">夏季办公室小家电推荐</div>
                                <div class="zc-activity-times">2015/5/19~2015/7/31</div>
                                <a href="#" class="zc-activity-button">进入活动</a>
                            </li>
                            <li>
                                <div class="zc-hd">活动进行中…<i class="zc-cancel-btn"></i></div>
                                <div class="zc-activity-name">夏季办公室小家电推荐</div>
                                <div class="zc-activity-times">2015/5/19~2015/7/31</div>
                                <a href="#" class="zc-activity-button">进入活动</a>
                            </li>
                            <li>
                                <div class="zc-hd">活动进行中…<i class="zc-cancel-btn"></i></div>
                                <div class="zc-activity-name">夏季办公室小家电推荐</div>
                                <div class="zc-activity-times">2015/5/19~2015/7/31</div>
                                <a href="#" class="zc-activity-button">进入活动</a>
                            </li>
                        </ul>
                    </div>
                    <div class="zc-view-all"><a href="#"><span>查看全部</span>&gt;&gt;</a></div>
                    <div class="zc-more-activity-box">
                        <div class="zc-unfold-btn zc-fold-btn"><i class="zc-ico"></i></div>
                        <div class="zc-scroll-bd" style="height:auto;">
                            <div class="zc-scroll-bar" style="height:24px;"></div>
                            <div class="zc-more-activity-hd">其他进行中的活动 (8)</div>
                            <ul>
                                <li>
                                    <div class="zc-activity-name">小家电红六月</div>
                                    <div class="zc-activity-times">2015/5/19~2015/7/31</div>
                                    <a href="#" class="zc-activity-button">进入活动</a>
                                </li>
                                <li>
                                    <div class="zc-activity-name">小家电红六月</div>
                                    <div class="zc-activity-times">2015/5/19~2015/7/31</div>
                                    <a href="#" class="zc-activity-button">进入活动</a>
                                </li>
                                <li>
                                    <div class="zc-activity-name">小家电红六月</div>
                                    <div class="zc-activity-times">2015/5/19~2015/7/31</div>
                                    <a href="#" class="zc-activity-button">进入活动</a>
                                </li>
                                <li>
                                    <div class="zc-activity-name">小家电红六月</div>
                                    <div class="zc-activity-times">2015/5/19~2015/7/31</div>
                                    <a href="#" class="zc-activity-button">进入活动</a>
                                </li>
                                <li>
                                    <div class="zc-activity-name">小家电红六月</div>
                                    <div class="zc-activity-times">2015/5/19~2015/7/31</div>
                                    <a href="#" class="zc-activity-button">进入活动</a>
                                </li>
                                <li>
                                    <div class="zc-activity-name">小家电红六月</div>
                                    <div class="zc-activity-times">2015/5/19~2015/7/31</div>
                                    <a href="#" class="zc-activity-button">进入活动</a>
                                </li>
                                <li>
                                    <div class="zc-activity-name">小家电红六月</div>
                                    <div class="zc-activity-times">2015/5/19~2015/7/31</div>
                                    <a href="#" class="zc-activity-button">进入活动</a>
                                </li>
                                <li>
                                    <div class="zc-activity-name">小家电红六月</div>
                                    <div class="zc-activity-times">2015/5/19~2015/7/31</div>
                                    <a href="#" class="zc-activity-button">进入活动</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- //活动 -->

                <!-- 店铺 -->
                <div class="zc-store-box" style="display:none;">
                    <div class="zc-empty-box" style="display:none;">
                        <p>亲，当前没有已关注的店铺~</p>
                    </div>
                    <div class="zc-scroll-bd">

                        <ul class="zc-store-list" style="height:700px;">
                            <li>
                                <a href="#">
                                    <span class="zc-store-name">爱国者北京专卖店</span>
                                    <span class="zc-subtitle">官方授权 正品保障</span>
                                    <span class="zc-button">进入店铺</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="zc-store-name">点沸数码专营店</span>
                                    <span class="zc-subtitle">满100减10元</span>
                                    <span class="zc-button">进入店铺</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="zc-store-name">鑫天下电子</span>
                                    <span class="zc-subtitle">满100送精美礼品一份</span>
                                    <span class="zc-button">进入店铺</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="zc-store-name">华晨数码旗舰店</span>
                                    <span class="zc-subtitle">官方授权  正品保障</span>
                                    <span class="zc-button">进入店铺</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="zc-store-name">万方宇笔记本旗舰店</span>
                                    <span class="zc-subtitle">满1000减200</span>
                                    <span class="zc-button">进入店铺</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="zc-store-name">华晨数码旗舰店</span>
                                    <span class="zc-subtitle">官方授权  正品保障</span>
                                    <span class="zc-button">进入店铺</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="zc-store-name">万方宇笔记本旗舰店</span>
                                    <span class="zc-subtitle">满1000减200</span>
                                    <span class="zc-button">进入店铺</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="zc-view-all"><a href="#"><span>查看全部</span>&gt;&gt;</a></div>
                </div>
                <!-- //店铺 -->
            </div>
        </div>
        <!-- //我的关注 -->
    </div>
    <!-- //右侧切换层 -->

    <!-- 清空浏览记录 -->
    <div class="zc-layerbox-overlay" id="cover_screen"></div>
    <div class="zc-layerbox" id="clear_confirm">
        <div class="zc-title">清空浏览记录？</div>
        <div class="zc-subtitle">确定后，您的浏览记录将被清空</div>
        <div class="zc-btn clearfix">
            <span class="ok">确定</span>
            <span class="cancel">取消</span>
        </div>
    </div>
    <!-- //清空浏览记录 -->
</div>

<script src="/static/js/shopLoginLayer.js"></script>
<script src="/static/js/perfect-scrollbar.jquery.min.js"></script>
<script src="/static/js/side_toolbar.js"></script>
<script src="/static/js/side_toolbar_fun_v1.0.js"></script>
<script>
    //侧边栏购物车数量
    function setCartNum(){
        var url = "/index.php?c=Ajax_ShopCart&a=GetCartNumber&callback=?&t="+Math.random();
        $.getJSON(
            url,
                {},
            function(data){
                $("#cart-total").html(data.cartNumber);
                $(".quick-entry .number").html(data.cartNumber);
            }
        );
    }
    setCartNum();
</script>
<script src="/static/js/public_head.js"></script>
<script src="/static/js/menuAim.js"></script>
<script src="/static/js/bxSlider.min.js"></script>
<!--<script src="http://www.zol.com/js/index_0921.js"></script>-->
<script src="/static/js/countDown.js"></script>
<script src="/static/js/scrollBar.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=U8p2WjWVszzPyGzr1YaYgtxhjt1XIFk6"></script>
<script src="/static/js/selectShowNoId.js"></script>
<script src="/static/js/tuan-pop.js"></script>
<script src="/static/js/home.js"></script>
<script language="JavaScript" src="/static/js/pv.js" type="text/javascript"></script>
<script>
    // 双十一底边栏
    $('#_j_11_trigger').on('click', function(){
        $(this).hide()
        $('#_j_11_box').addClass('foot-activity-show')
    })
    $('#_j_11_box').on('click', '.close', function(){
        $('#_j_11_box').removeClass('foot-activity-show')
        setTimeout(function(){
            $('#_j_11_trigger').show()
        },300)
    });
    $('.ware-detail a').click(function(){
        var goodsId = $(this).attr("data-id");
        var typeId = $(this).attr("dataseetype");
        $("#articleTab").attr("href","/index.php?c=IndexNew&a=GetEvaluateLayer&type=1&goodsId="+goodsId);

        $("#videoTab").attr("href","/index.php?c=IndexNew&a=GetEvaluateLayer&type=2&goodsId="+goodsId);

        $("#evaluateTab").attr("href","/index.php?c=IndexNew&a=GetEvaluateLayer&type=3&goodsId="+goodsId);

    });
</script>
</body>
</html>