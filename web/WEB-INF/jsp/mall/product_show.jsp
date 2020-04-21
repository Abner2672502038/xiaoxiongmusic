<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2019/10/19
  Time: 17:41
  To change this template use File | Settings | File Templates.
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>音乐列表</title>
    <link rel="stylesheet" href="lib/zTree/v3/css/zTreeStyle/zTreeStyle.css" type="text/css">
</head>
<body>
<%@include file="public1.jsp" %>
<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 产品管理 <span
            class="c-gray en">&gt;</span> 产品列表 <a class="btn btn-success radius r"
                                                  style="line-height:1.6em;margin-top:3px"
                                                  href="javascript:location.replace(location.href);" title="刷新"><i
            class="Hui-iconfont">&#xe68f;</i></a></nav>
    <div>
        <div class="pd-20">

            <div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="r">共有数据：<strong>${mallProducts.size()}</strong> 条</span>
            </div>
            <div class="mt-20">
                <table class="table table-border table-bordered table-bg table-hover table-sort">
                    <thead>
                    <tr class="text-c">
                        <th width="40">ID</th>
                        <th width="60">产品名称</th>
                        <th width="100">产品价格</th>
                        <th width="100">产品状态</th>
                        <th width="100">更新时间</th>
                        <th width="300">产品路径</th>
                        <th width="300">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${mallProducts}" var="product">
                        <tr>
                            <td>${product.id}</td>
                            <td>${product.productName}</td>
                            <td>${product.productPrice}</td>
                           <c:if test="${product.status=='1'}">
                                <td>待审核</td>
                            </c:if>
                            <c:if test="${product.status=='0'}">
                                <td>销售中</td>
                            </c:if>
                            <td>${product.time}</td>
                            <td>${product.picturePath}</td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;
                                <c:if test="${product.status=='1'}">
                                    <img src="${pageContext.request.contextPath}/style/images/controll/pass.png" style="left: 90px;position: relative" onclick="passproduct(${product.id})">
                                </c:if>
                                <c:if test="${product.status=='0'}">
                                    <img src="${pageContext.request.contextPath}/style/images/controll/stop.png" style="left: 90px;position: relative" onclick="stopproduct(${product.id})">
                                </c:if>

                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/style/images/controll/delete.png" style="left: 100px;position: relative" onclick="deleteproduct(${product.id})"></td>
                        </tr>

                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    </div>
</section>
<!--_footer 作为公共模版分离出去-->
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
<script type="text/javascript">
    var setting = {
        view: {
            dblClickExpand: false,
            showLine: false,
            selectedMulti: false
        },
        data: {
            simpleData: {
                enable: true,
                idKey: "id",
                pIdKey: "pId",
                rootPId: ""
            }
        },
        callback: {
            beforeClick: function (treeId, treeNode) {
                var zTree = $.fn.zTree.getZTreeObj("tree");
                if (treeNode.isParent) {
                    zTree.expandNode(treeNode);
                    return false;
                } else {
                    demoIframe.attr("src", treeNode.file + ".html");
                    return true;
                }
            }
        }
    };

    function passproduct(id) {
        $.ajax({
            url:"/mall/updatepassStatus",
            async:true,
            data:{
                "id": id,
            },
            type:"post",
            success:function (data) {
                window.location.href = "/mall/selectall";
            }
        });
    }
    function stopproduct(id) {
        $.ajax({
            url:"/mall/updatestopStatus",
            async:true,
            data:{
                "id": id,
            },
            type:"post",
            success:function (data) {
                window.location.href = "/mall/selectall";
            }
        });
    }
    function deleteproduct(id) {
        $.ajax({
            url:"/mall/deleteproduct",
            async:true,
            data:{
                "id": id,
            },
            type:"post",
            success:function (data) {
                window.location.href = "/mall/selectall";
            }
        });
    }



    var code;

    function showCode(str) {
        if (!code) code = $("#code");
        code.empty();
        code.append("<li>" + str + "</li>");
    }

    $('.table-sort').dataTable({
        "aaSorting": [[1, "desc"]],//默认第几个排序
        "bStateSave": true,//状态保存
        "aoColumnDefs": [
            {"orderable": false, "aTargets": [0, 7]}// 制定列不参与排序
        ]
    });
    function product_show(title, url, id) {
        var index = layer.open({
            type: 2,
            title: title,
            content: url
        });
        layer.full(index);
    }
</script>
</body>
</html>


