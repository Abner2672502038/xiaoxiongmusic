<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2019/10/4
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" media="all" href="${pageContext.request.contextPath}/style/css/user.css" />
</head>

<body class="no-padding reader-black-font" lang="zh-CN">
<div class="sign">
    <div class="main">


        <h4 class="title">
            <div class="normal-title">
                <a class="active" href="/user/login">登录</a>
                <b>·</b>
                <a id="js-sign-up-btn" class="" href="/user/register">注册</a>
            </div>
        </h4>
        <div class="js-sign-in-container">
            <form id="new_session" action="/user/dologin" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" />

                <!-- 正常登录登录名输入框 -->
                <div class="input-prepend restyle js-normal">
                    <input placeholder="手机号或邮箱" type="text" name="account" id="session_email_or_mobile_number" />
                    <i class="iconfont ic-user"></i>
                </div>
                <div class="input-prepend">
                    <input placeholder="密码" type="password" name="password" id="session_password" />
                    <i class="iconfont ic-password"></i>
                </div>
                <div class="remember-btn">
                    <input type="checkbox" value="true" checked="checked" name="session[remember_me]" id="session_remember_me" /><span>记住我</span>
                </div>

                <input class="sign-in-button" id="sign-in-form-submit-btn" type="submit">
                    <span id="sign-in-loading"></span>
                </input>
            </form>

        </div>

    </div>
</div>
<script type="application/json" data-name="page-data">{"user_signed_in":false,"locale":"zh-CN","os":"windows","read_mode":"day","read_font":"font2"}</script>
</body>
</html>
