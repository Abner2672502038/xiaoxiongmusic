<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2019/10/5
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户管理</title>
</head>
<body>
<script src="${pageContext.request.contextPath}/style/js/jquery-color-2.1.2.js"></script>
<script src="${pageContext.request.contextPath}/style/js/fore_home.js"></script>
<script src="${pageContext.request.contextPath}/style/js/jquery.js"></script>
<link href="${pageContext.request.contextPath}/style/css/fore_home.css" rel="stylesheet"/>


<nav>
    <div class="header">
        <img src="${pageContext.request.contextPath}/style/images/logo/logo.jpg">
        <div class="mallSearch">
            <form action="${pageContext.request.contextPath}/product" method="get">
                <div class="mallSearch-input">
                    <input class="header_search_input" type="text" name="product_name" placeholder="搜索 "
                           maxlength="50">
                    <input class="header_search_button" type="submit" value="搜索">
                </div>
            </form>
            <c:choose>
                <c:when test="${user!=null}">
                    <img class="img8" style="position: relative;left: 590px;top: -43px;" id="img_home_profile_picture"
                         src="${pageContext.request.contextPath}/home/img1/default.png"
                         alt="头像" title="头像" width="32px" height="32px">
                    <ul class="yyy" style="position: relative;left: 590px;top: -43px;">
                        <li >
                            <a href=""> 个人账户</a>
                        </li>

                    </ul>
                    <ul class="yyy" style="position: relative;left: 590px;top: -43px;">
                        <li>
                            <a href="">退出</a>
                        </li>
                    </ul>

                </c:when>
                <c:otherwise>
                    <a href="/user/login" style=" background-color: #0f9ae0;position: relative;left: 590px;top: -43px;"><img
                            src="${pageContext.request.contextPath}/home/img1/login.png"></a>
                </c:otherwise>
            </c:choose>

        </div>
    </div>
    <div class="home_nav">
        <a href="${pageContext.request.contextPath}/home/show" target="_blank" style="left: 260px;position: absolute;text-decoration: none">首页</a>
        <a href="${pageContext.request.contextPath}/solar/selectsolar" target="_blank" style="left: 340px;position: absolute;text-decoration: none">榜单</a>
        <a href="https://miao.tmall.com/" target="_blank" style="left: 420px;position: absolute;text-decoration: none">歌手</a>
        <a href="http://yao.tmall.com/" target="_blank" style="left: 500px;position: absolute;text-decoration: none">商城</a>
    </div>
</nav>
<div id="banner1">
    <ul style="border-bottom: 0px solid #54ade7;margin-left: -1px;zoom: 1;">
        <li style="list-style:none;position: relative;float: left;width: 183px;margin-left: 500px;margin-bottom: -1px;text-align: center">
            <a href="/user/usermanagement" style="display: block;/*display: block;*/border-style: solid;border-width: 1px;height: 29px;line-height: 29px;font-size: 14px;border-color: #b5b5b5 #b5b5b5#b5b5b5 ;color: #7b7b7b;font-weight: bold;border-radius: 2px 2px 0 0;">修改头像</a>
        </li>
        <li style="list-style:none;position: relative;float:left;;width: 183px;margin-left: 1px;margin-bottom: -1px;text-align: center">
            <a href="/user/updatepassword" style="display:block;border-style: solid;border-width: 1px;height: 29px;line-height: 29px;font-size: 14px;border-color: #b5b5b5 #b5b5b5 #b5b5b5 ;color: #7b7b7b;font-weight: bold;border-radius: 2px 2px 0 0;">修改密码</a>
        </li>
    </ul>

</div>
</body>
</html>
