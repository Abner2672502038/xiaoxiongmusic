<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2019/10/7
  Time: 1:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="Bookmark" href="favicon.ico">
    <link rel="Shortcut Icon" href="favicon.ico"/>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/css/H-ui.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/css/H-ui.admin.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/css/iconfont.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/css/skin.css" id="skin"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/css/style.css"/>
    <title>评论</title>
</head>
<body>
<%@include file="public.jsp" %>
<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 产品管理 <span
            class="c-gray en">&gt;</span> 产品列表 <a class="btn btn-success radius r"
                                                  style="line-height:1.6em;margin-top:3px"
                                                  href="javascript:location.replace(location.href);" title="刷新"><i
            class="Hui-iconfont">&#xe68f;</i></a></nav>
    <div>
        <div class="pd-20">
            <div class="text-c">
                <input type="text" name="" id="11" placeholder=" 歌曲名称" style="width:250px" class="input-text">
                <button name="" id="22" class="btn btn-success" type="submit"><i class="Hui-iconfont">&#xe665;</i> 搜歌曲
                </button>
            </div>
            <div class="cl pd-5 bg-1 bk-gray mt-20"><span class="l">
                    </span> <span class="r">共有数据：<strong>${comments.size()}</strong> 条</span>
            </div>
            <div class="mt-20">
                <table class="table table-border table-bordered table-bg table-hover table-sort">
                    <thead>
                    <tr class="text-c">
                        <th width="40">ID</th>
                        <th width="60">用户评论</th>
                        <th width="100">音乐ID</th>
                        <th width="100">评论ID</th>
                        <th width="60">评论时间</th>

                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${comments}" var="comment">
                        <tr>
                            <td>${comment.id}</td>
                            <td>${comment.content}</td>
                            <td>${comment.songId}</td>
                            <td>${comment.userId}</td>
                            <td>${comment.time}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    </div>
</section>
</body>
</html>
