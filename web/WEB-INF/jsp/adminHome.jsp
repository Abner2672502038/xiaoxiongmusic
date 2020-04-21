<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2019/9/12
  Time: 19:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="Bookmark" href="favicon.ico" >
    <link rel="Shortcut Icon" href="favicon.ico" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/css/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/css/skin.css" id="skin" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/css/style.css" />


    <title>管理员后台主页</title>
</head>
<body>
<%@include file="public.jsp"%>
<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont"></i> <a href="/" class="maincolor">首页</a>
        <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
</section>

<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/H-ui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/H-ui.admin.page.js"></script>
<script type="text/javascript">

</script>

</body>
</html>