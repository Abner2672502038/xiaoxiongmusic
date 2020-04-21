<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2019/9/12
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />

    <link href="${pageContext.request.contextPath}/style/css/H-ui.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/style/css/H-ui.ucenter.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/style/css/iconfont.css" rel="stylesheet" type="text/css" />
    <title>管理员登录</title>
</head>
<body>
<div class="login-wraper">
    <div class="login-form radius box-shadow">
        <div class="clearfix pt-20">
            <i class="iconpic iconpic-logo"></i>
        </div>
        <div class="row clearfix form-title">小熊音乐</div>
        <form class="form form-horizontal" id="form-login">
            <div class="row clearfix">
                <input type="email" class="input-text radius size-L" name="email" id="email" value="" placeholder="Email">
            </div>
            <div class="row clearfix">
                <input type="password" class="input-text radius size-L" name="password" id="password" value="" placeholder="password">
            </div>
            <div class="row clearfix">
                <button class="btn btn-primary btn-block radius size-L">登 录</button>
            </div>
            <div class="row clearfix f-12">
                <a href="/password/reset/">忘记密码?</a>
                <div class="line mt-20"></div>
            </div>
            <div class="row clearfix">没有账户? <a href="/admin/register"><strong>注 册</strong></a></div>
        </form>
    </div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/H-ui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/validate-methods.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/messages_zh.min.js"></script>
<script type="text/javascript">
    $(function() {
        $("#form-login").validate({
            rules: {
                email: {
                    required: true,
                    email: true,
                },
                password: {
                    required: true,
                    rangelength: [6, 16]
                },
            },
            messages: {
                email: {
                    required: "邮箱不能为空",
                    email: "邮箱格式不正确",
                },
                password: {
                    required: "密码不能为空",
                    rangelength: "6-16个字符"
                }
            },
            onkeyup: false,
            focusCleanup: false,
            submitHandler: function(form) {
                $(".label.error").hide();
                var name = $("#email").val();
                var password = $("#password").val();
                $.ajax({
                    url: "/admin/dologin",
                    async:true,
                    type: "post",
                    data:{
                        "name": name,
                        "password": password
                    },
                    success: function (res) {
                        if (res == "success") {
                            self.href = "/admin/home";
                        }else {
                            alert("登录出错");
                        }
                    }

                });

            }
        });
    });
</script>
</body>
</html>
