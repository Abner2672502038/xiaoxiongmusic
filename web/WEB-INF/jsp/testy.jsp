<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2019/9/18
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="zh-CN">
<head>
    <meta charset="UTF-8" />
    <meta name="title" content="我的酷狗-修改头像-酷狗音乐" />
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <title>我的酷狗-修改头像-酷狗音乐</title>
    <link rel="stylesheet" href="http://www.kugou.com/newuc/static/css/base_v.1.css?201511061406" />
    <link rel="stylesheet" href="http://www.kugou.com/newuc/static/css/user_center_v.1.css?201511061406" />
    <link rel="shortcut icon" type="image/x-icon" href="http://www.kugou.com/newuc/static/images/favicon.ico" />
</head>
<body>

    <script type="text/javascript" src="https://www.kugou.com/common/js/jquery.min.js"></script>
    <script type="text/javascript" src="https://www.kugou.com/common/js/lib.js"></script>
    <script src="https://staticssl.kugou.com/common/js/min/login/kguser.v2.min.js?20190111"></script>
    <script type="text/javascript" src="https://www.kugou.com/common/js/common_header.min.js"> </script>
    <script src="https://staticssl.kugou.com/common/js/repalceHttpsImg.js"></script>
    <script type="text/javascript" src="https://staticssl.kugou.com/verify/static/js/registerDev.v1.min.js?appid=1014&20190408" charset="utf-8"></script>




    <!-- body -->
    <div class="kg_uc_bodyArea">
        <div class="wing_area_outset">
            <div class="wing_area">
                <div class="wing_main">
                    <div class="wing_main_content">
                        <!-- 主体 -->
                        <div class="kg_uc_module01">
                            <div class="kg_uc_module01_hd">
                                <h4 class="h_tl">我的酷狗</h4>
                                <div class="h_l"><span class="kg_uc_module01_notice">Personal information</span></div>
                            </div>
                            <div class="kg_uc_module01_bd">
                                <!-- tab 区域 -->
                                <div class="kg_uc_module02 kg_uc_module02_v1">
                                    <div class="kg_uc_module02_hd">
                                        <div class="kg_uc_module02_tag_list"></div>
                                        <ul class="kg_uc_module02_tag_list_ct">
                                            <li class="cur"><a href="#" title="修改头像"><span>修改头像</span></a></li>
                                            <li><a href="http://www.kugou.com/newuc/user/uc/type=edit" title="编辑资料"><span>编辑资料</span></a></li>
                                            <li><a href="http://www.kugou.com/newuc/user/uc/type=changepwd" title="修改密码"><span>修改密码</span></a></li>
                                            <li><a href="http://www.kugou.com/newuc/user/uc/type=account" title="帐号安全"><span>帐号安全</span></a></li>
                                        </ul>
                                    </div>
                                    <div class="kg_uc_module02_bd">
                                        <div class="bottom10 clearfix">
                                            <span class="kg_uc_tri_tabList_txt_fix f14 gray">设置一个您喜爱的头像：</span>
                                            <!--<ul class="kg_uc_tri_tabList" id="avataruploadTabList">
                                                <li class="cur"><a href="#">本地上传</a></li>
                                                <li><a href="http://www.kugou.com/newuc/user/uc/type=recommend">酷狗推荐</a></li>
                                            </ul>-->
                                        </div>
                                        <!--
                                        <div class="bottom20"><p class="gray9">(请选择图片文件，最佳尺寸165 x 165，支持JPG，JPEG，GIF，PNG)</p></div>
                                        -->
                                        <div id="avatarupload_cnt">
                                            <!-- 本地上传 -->
                                            <div id="uploader">

                                            </div>
                                            <!--/本地上传 -->

                                        </div>
                                    </div>
                                </div>
                                <!--/tab 区域 -->
                            </div>
                        </div>

                        <div class="kg_uc_module02 kg_uc_module02_v1">
                            <div class="kg_uc_module02_bd">
                                <span class="recommand_icon">推荐头像：</span>
                                <div id="avatar_recommand">
                                    <!-- 酷狗推荐 -->
                                    <div>
                                        <div class="kg_uc_avatarimg_list">
                                            <ul class="kg_uc_avatarimg_list_ct">
                                                <li class="kg_uc_avatarimg_item">
                                                    <div class="kg_uc_avatarimg_cover"  data-pic="http://imge.kugou.com/kugouicon/20100101/20100101192931478054.jpg">
                                                        <img width="110" height="110" src="http://imge.kugou.com/kugouicon/20100101/20100101192931478054.jpg" alt="头像"/>
                                                    </div>
                                                    <div class="kg_uc_avatarimg_txt">
                                                        <a href="javascript:;" title="" class="kg_uc_btn_style01" data-pic="http://imge.kugou.com/kugouicon/20100101/20100101192931478054.jpg">选择</a>
                                                    </div>
                                                </li>
                                                <li class="kg_uc_avatarimg_item">
                                                    <div class="kg_uc_avatarimg_cover"  data-pic="http://imge.kugou.com/kugouicon/20100101/20100101192932231831.jpg">
                                                        <img width="110" height="110" src="http://imge.kugou.com/kugouicon/20100101/20100101192932231831.jpg" alt="头像"/>
                                                    </div>
                                                    <div class="kg_uc_avatarimg_txt">
                                                        <a href="javascript:;" title="" class="kg_uc_btn_style01" data-pic="http://imge.kugou.com/kugouicon/20100101/20100101192932231831.jpg">选择</a>
                                                    </div>
                                                </li>
                                                <li class="kg_uc_avatarimg_item">
                                                    <div class="kg_uc_avatarimg_cover"  data-pic="http://imge.kugou.com/kugouicon/20100101/20100101192933418660.jpg">
                                                        <img width="110" height="110" src="http://imge.kugou.com/kugouicon/20100101/20100101192933418660.jpg" alt="头像"/>
                                                    </div>
                                                    <div class="kg_uc_avatarimg_txt">
                                                        <a href="javascript:;" title="" class="kg_uc_btn_style01" data-pic="http://imge.kugou.com/kugouicon/20100101/20100101192933418660.jpg">选择</a>
                                                    </div>
                                                </li>
                                                <li class="kg_uc_avatarimg_item">
                                                    <div class="kg_uc_avatarimg_cover"  data-pic="http://imge.kugou.com/kugouicon/20100101/20100101192935882161.jpg">
                                                        <img width="110" height="110" src="http://imge.kugou.com/kugouicon/20100101/20100101192935882161.jpg" alt="头像"/>
                                                    </div>
                                                    <div class="kg_uc_avatarimg_txt">
                                                        <a href="javascript:;" title="" class="kg_uc_btn_style01" data-pic="http://imge.kugou.com/kugouicon/20100101/20100101192935882161.jpg">选择</a>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>

                                        <!-- 页码 -->
                                        <div class="kg_page_area" style="display:none">
                                            <div class="kg_page_area_ct">
                                                <a href="javascript:;" class="kg_page_area_pn">首页</a>
                                                <a href="javascript:;" class="kg_page_area_pn kg_page_area_pn_current">1</a>
                                                <a href="javascript:;" class="kg_page_area_pn">2</a>
                                                <a href="javascript:;" class="kg_page_area_pn">尾页</a>
                                            </div>
                                        </div>
                                        <!--/页码 -->
                                    </div>
                                    <!--/酷狗推荐 -->
                                </div>
                            </div>
                        </div>

                        <!--/主体 -->
                    </div>
                </div>
                <div class="wing_side">
                    <!-- 左侧栏 -->
                    <!-- 头像区域 -->
                    <div class="kg_uc_avatar_area">
                        <div class="kg_uc_avatar_cover"><img id="UserImage" width="165" height="165" src="http://imge.kugou.com/kugouicon/165/20120724/20120724145917274529.jpg" alt="Abner"></div>
                        <div class="kg_uc_avatar_txt">
                            <p align="center"><a href="http://www.kugou.com/newuc/user/uc/" id="myucname" class="kg_uc_avatar_name">Abner</a>
                                <a href="http://vip.kugou.com/home/recharge" target="_blank" class="kg_gold_vip_icon" title="黄金vip"></a>
                            </p>
                            <p align="center">(帐号:kgopen1348757636)</p>
                            <!--<p align="center">积分：0</p>-->
                            <!--<p align="center"><a href="http://www.kugou.com/uc/1348757636.html" style="text-decoration:underline" >返回旧版</a></p>-->
                        </div>
                        <div class="kg_uc_avatar_vipinfo" id="user_vipinfo">
                            <!-- <p>你的到期时间：<br/> -->
                            <p>你的金钻VIP到期时间：<br/>
                                <span id="myviptime">2019-10-14</span>
                                <a target="_blank" href="http://vip.kugou.com/recharge.html?from=music&version=7713&action=newSuperVipType" title="续费">续费&gt;&gt;</a>
                            </p>
                        </div>

                    </div>
                    <!--/头像区域 -->
                    <!--/左侧栏 -->
                </div>
                <script>
                    var myPic = "http://imge.kugou.com/kugouicon/165/20191004/20191004195308197122.jpg";

                    // document.domain="kugou.com";
                    try{
                        var kugouC = read("KuGoo");
                        var pic_src = kugouC.Pic;
                        if(!pic_src || pic_src == "default.jpg"){
                            pic_src = "http://imge.kugou.com/kugouicon/165/20120724/20120724145917274529.jpg";
                        } else if(pic_src.indexOf("http://") != -1){
                            pic_src = pic_src;
                        } else {
                            pic_src ="http://imge.kugou.com/kugouicon/165/"+pic_src.substr(0,8)+"/"+pic_src;
                        }
                        var nickname=kugouC.NickName.replace(/%/g, "\\");;
                        nickname=eval("'" + nickname + "'");
                        document.getElementById("myucname").innerHTML=nickname;
                        document.getElementById("UserImage").src= myPic || pic_src;
                    }catch(ex){

                    }

                </script>

                <div class="clear"></div>
            </div>
        </div>
    </div>
    <!--/body -->

    <link rel="stylesheet" data-embed href="https://www.kugou.com/common/css/footer.css">

    <script>
        (function () {
            var kg_bottom = {
                reportDialog:null,
                getjs: function (url, callback) {
                    var s = document.createElement("script");
                    s.type = "text/javascript";
                    s.src = url;
                    document.getElementsByTagName("head")[0].appendChild(s);
                    if (typeof callback != "function") {
                        return;
                    }
                    if (s.readyState) {
                        if (/loaded|complete/.test(s.readyState)) {
                            callback();
                        } else {
                            s.onreadystatechange = function () {
                                if (/loaded|complete/.test(s.readyState)) {
                                    this.onreadystatechange = null;
                                    callback();
                                }
                            }
                        }
                    } else {
                        s.onload = function () {
                            callback();
                        }
                    }
                },
                jubao: function () {
                    var _this = this;
                    if(_this.reportDialog){
                        return;
                    }
                    _this.reportDialog = dialog({
                        title: '提示',
                        skin: 'report-dialog',
                        width: 435,
                        height: 105,
                        fixed: true,
                        content: [
                            " <div class=\"report-content\" style=\"padding:10px;\">",
                            "<div class=\"report-tips\" style=\"lin-height:22px;padding-bottom:30px;\"><p >为了倡导诚信、正直、敬业、积极的企业文化，防治舞弊，欢迎您</p><p>对我司存在的舞弊行为通过邮箱进行举报。</p></div>",
                            " <div class=\"report-mail\">举报邮箱：<span style=\"color:#3399ff\">jubao@kugou.com</span></div>",
                            "</div>"
                        ].join(""),
                        onclose:function(){
                            _this.reportDialog = null;
                        }
                    }).show();
                },
                bottom_init: function () {
                    var _this = this;
                    $("#report").click(function (e) {
                        e.preventDefault();
                        if (typeof dialog == "undefined" || dialog == null) {
                            kg_bottom.getjs("https://www.kugou.com/common/js/dialog.min.js", function () {
                                _this.jubao()
                            })
                        } else {
                            _this.jubao();
                        }
                    });
                }
            }
            kg_bottom.bottom_init()
        })(this)
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?aedee6983d4cfc62f509129360d6bb3d";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
        (function () {
            setTimeout(function () {
                var d = document.createElement("script");
                d.src = "https://staticssl.kugou.com/common/js/min/hijacked-min.js";
                document.body.appendChild(d);
            }, 2000);
        })();
    </script>

</div>
</body>
</html>
<script type="text/javascript">
    var kg_domain = "http://www.kugou.com/newuc/";
</script>
<script type="text/javascript" src="http://static.kugoo.com/common/js-lib/base.js" charset="utf-8"></script>
<script type="text/javascript" src="http://www.kugou.com/newuc/static/js/user_center_global_v.1-min.js" charset="utf-8"></script>


<script type="text/javascript">
    (function(){
        var uploadFlashElm = document.getElementById("uploader"),
            userImg = document.getElementById('UserImage'),
            flashAddr = "http://www.kugou.com/newuc/static/swf/ImagesUpload.swf",
            flashStr = Kg.flash.getStr("ImagesUpload",flashAddr + '?img='+ userImg.src +'&w=165&h=165&t=201403051544',670,242,{"flashvars":"url=http://www.kugou.com/newuc/user/do/type=1","wmode":"transparent"});

        uploadFlashElm.innerHTML = flashStr;
    })();

    /*
     *页面总入口
     */
    function initAvatar(){
        //选择推荐头像
        var _avatar_recommand = Kg.$("#avatar_recommand");
        _avatar_recommand.find(".kg_uc_avatarimg_cover").addEvent("click",function(){
            toSave(this);
        });
        _avatar_recommand.find(".kg_uc_btn_style01").addEvent("click",function(){
            toSave(this);
        });

    }

    initAvatar();

    function uploadEnd(res){
        if(res.indexOf("error") == -1&& res.indexOf("fail") == -1){
            res = res.replace(/[\r]/g,"");
            res = res.replace(/[\n]/g,"");
            var imgUrl = "http://imge.kugou.com/kugouicon/165/"+res.substr(0,8)+"/"+res;
            document.getElementById('UserImage').src = imgUrl;
            document.getElementById('user_img').src = imgUrl;
            top.Kg.$T("img", "public-header")[0].src = imgUrl;
            Kg.Cookie.rewriteKey("KuGoo", "Pic", res, 86400, "/", "kugou.com");

            alertTips("mini",{status:"success",innerHTML:"保存成功。"});
        }else if(res.indexOf("20002") != -1){
            alertTips("mini",{status:"error",innerHTML:'由于系统升级，功能暂时无法使用，给您带来的不便，敬请谅解！'});
        }else{
            alertTips("mini",{status:"error",innerHTML:"保存失败。"});
        }
    }

    function toSave(t){
        var pic = t.getAttribute("data-pic");
        if(pic!==""){
            save(pic);
        }else{
            notVipSaveErr()
        }
    }

    function save(url){
        var pic=url.substring(url.lastIndexOf('/')+1,url.length)
        Kg.post("../do/type=6",{"pic":pic},function(res){
            if(res=="success"){
                var imgUrl = "http://imge.kugou.com/kugouicon/165/"+pic.substr(0,8)+"/"+pic;
                try{
                    Kg.$('#UserImage')[0].src = imgUrl;
                    Kg.$('#user_img')[0].src = imgUrl;
                }catch(ex){
                }

                Kg.Cookie.rewriteKey("KuGoo", "Pic", pic, 86400, "/", "kugou.com");
                alertTips("mini",{status:"success",autoHide:3000,innerHTML:"更换头像成功!"})
            }
            else{
                alertTips("mini",{status:"error",autoHide:3000,innerHTML:res})
            }
        });
    }

    function notVipSaveErr(){
        alertTips("mini",{status:"error",autoHide:3000,innerHTML:'<span style="color:#007AC1;">你还不是VIP用户，暂不能使用该头像。</span><a target="_blank" href="http://vip.kugou.com/home/recharge" style="color:#CB2121;">开通VIP</a>'});
    }



</script>




