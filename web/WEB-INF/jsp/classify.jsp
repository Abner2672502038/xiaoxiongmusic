<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2019/9/18
  Time: 20:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
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
    <link rel="stylesheet" href="lib/zTree/v3/css/zTreeStyle/zTreeStyle.css" type="text/css">
    <script src="${pageContext.request.contextPath}/style/js/jquery.js"></script>
    <script>
        function insertclassify() {
            var classify = prompt("请输入分类名");
            $.ajax({
                url: "/classify/insertclassify",
                async: true,
                data: {"classify": classify},
                type: "post",
                success: function (data) {
                    if (data == "success") {
                        window.location.href = "/classify/show";
                    }
                }
            });

        }
        function editorclassify(id) {
            var updateclassify = prompt("请输入更改的分类名称","音乐");
            $.ajax({
                url:"/classify/updateclassify",
                async:true,
                data:{
                    "id": id,
                    "updateclassify": updateclassify
                },
                type:"post",
                success:function (data) {
                    window.location.href = "/classify/show";
            }
            });
        }
        function deleteclassify(id) {
            $.ajax({
                url:"/classify/deleteclassify",
                async:true,
                data:{
                    "id": id,
                },
                type:"post",
                success:function (data) {
                    window.location.href = "/classify/show";
                }
            });


        }
    </script>
    <title>classify jsp</title>
</head>
<body>
<%@include file="/WEB-INF/jsp/public.jsp" %>
<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 分类管理 <span
            class="c-gray en">&gt;</span> 分类列表 <a class="btn btn-success radius r"
                                                  style="line-height:1.6em;margin-top:3px"
                                                  href="javascript:location.replace(location.href);" title="刷新"><i
            class="Hui-iconfont">&#xe68f;</i></a></nav>
    <div class="Hui-article">
        <article class="cl pd-20">
            <div class="mt-20">
                <table class="table table-border table-bordered table-bg table-hover table-sort">
                    <thead>
                    <tr class="text-c">
                        <th width="80">序号</th>
                        <th width="100">分类名称</th>
                        <th width="150">更新时间</th>
                        <th width="100">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${list}" var="smalllist" >
                        <tr align="center">
                            <td id="classifyId"><center>${smalllist.id}</center></td>
                            <td id="classifyname"><center>${smalllist.classifyName}</center></td>
                            <td><center>${smalllist.updateTime}</center></td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/style/images/controll/editor.png" style="left: 90px;position: relative" onclick="editorclassify(${smalllist.id})">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/style/images/controll/delete.png" style="left: 100px;position: relative" onclick="deleteclassify(${smalllist.id})"></td>
                        </tr>
                    </c:forEach>

                    </tbody>
                </table>
            </div>
        </article>
    </div>
</section>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/H-ui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/H-ui.admin.page.js"></script>
<!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/WdatePicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/laypage.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/jquery.ztree.all-3.5.min.js"></script>
</body>
</html>
