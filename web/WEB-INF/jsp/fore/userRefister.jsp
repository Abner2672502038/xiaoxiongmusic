<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2019/10/4
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if IE 6]><html class="ie lt-ie8"><![endif]-->
<!--[if IE 7]><html class="ie lt-ie8"><![endif]-->
<!--[if IE 8]><html class="ie ie8"><![endif]-->
<!--[if IE 9]><html class="ie ie9"><![endif]-->
<!--[if !IE]><!--> <html> <!--<![endif]-->

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" media="all" href="${pageContext.request.contextPath}/style/css/user.css" />
</head>

<body class="no-padding reader-black-font" lang="zh-CN">
<div class="sign">
    <div class="main">


        <h4 class="title">
            <div class="normal-title">
                <a class="" href="/user/login">登录</a>
                <b>·</b>
                <a id="js-sign-up-btn" class="active" href="/user/register">注册</a>
            </div>
        </h4>

        <div class="js-sign-up-container">
            <form class="new_user" id="new_user" action="/user/doregister" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="2HHpYWJ1j1hz+U1V75FqqKQK6vwBwY2hJ+i26wcec6aa1GTJY1LOUMO9ojfYriZpMwGdiWyjUtw41ixagTJrzw==" />
                <div class="input-prepend restyle">
                    <input placeholder="你的昵称" type="text" value="" name="nickname" id="user_nickname" />
                    <i class="iconfont ic-user"></i>
                </div>
                <div class="input-prepend restyle no-radius js-normal">
                    <input type="hidden" value="CN" name="user[mobile_number_country_code]" id="user_mobile_number_country_code" />
                    <input placeholder="手机号" type="tel" name="account" id="user_mobile_number" />
                    <i class="iconfont ic-phonenumber"></i>
                </div>
                <div class="input-prepend">
                    <input placeholder="设置密码" type="password" name="password" id="user_password" />
                    <i class="iconfont ic-password"></i>
                </div>
                <input type="submit" name="commit" value="注册" class="sign-up-button" id="sign_up_btn" data-disable-with="注册" />
            </form>
        </div>

    </div>
</div>

</body>
</html>
