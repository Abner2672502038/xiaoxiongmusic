<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2019/9/19
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--_meta 作为公共模版分离出去-->
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="Bookmark" href="favicon.ico" >
    <link rel="Shortcut Icon" href="favicon.ico" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/css/H-ui.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/css/H-ui.admin.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/css/iconfont.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/css/skin.css" id="skin"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/css/style.css"/>
    <link rel="stylesheet" href="lib/zTree/v3/css/zTreeStyle/zTreeStyle.css" type="text/css">

    <title>歌手管理</title>
    <link rel="stylesheet" href="lib/zTree/v3/css/zTreeStyle/zTreeStyle.css" type="text/css">
    <script>
        function addsinger() {
            $("#section1").css("visibility","hidden")
            $("#section2").css("visibility","visible");
        }
        function deletesinger(id) {
            $.ajax({
                url: "/singer/deletesinger",
                type:"post",
                async:true,
                data:{
                    "id": id
                },
                success: function (data) {
                    if (data == "success") {
                        window.location.href = "/singer/show";
                    }else {
                        alert("删除失败");
                    }


                }

            });

        }

    </script>
</head>
<body>
<%@include file="public.jsp"%>
<section class="Hui-article-box" id="section1" style="visibility: visible">
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 产品管理 <span class="c-gray en">&gt;</span> 歌手管理 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
    <div class="Hui-article">
        <article class="cl pd-20">
            <div class="cl pd-5 bg-1 bk-gray"><a class="btn btn-primary radius" href="javascript:;" onclick="addsinger()"><i class="Hui-iconfont">&#xe600;</i> 添加歌手</a><span class="r">共有数据：<strong>${singers.size()}</strong> 条</span> </div>
            <div class="mt-10">
                <table class="table table-border table-bordered table-hover table-bg">
                    <thead>
                    <tr>
                        <th scope="col" colspan="6">歌手管理</th>
                    </tr>
                    <tr class="text-c">
                        <th width="40">ID</th>
                        <th width="200">歌手名</th>
                        <th width="50">性别</th>
                        <th width="300">描述</th>
                        <th width="70">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${singers}" var="singer">
                        <tr>
                            <td><center>${singer.id}</center></td>
                            <td><center>${singer.singerName}</center></td>
                            <td><center>${singer.sex}</center></td>
                            <td><center>${singer.introduce}</center></td>
                            <td>&nbsp;<img src="${pageContext.request.contextPath}/style/images/controll/editor.png">&nbsp;&nbsp;&nbsp;&nbsp;<a value="${singer.id}" onclick="deletesinger(${singer.id})" id="singerid"><img src="${pageContext.request.contextPath}/style/images/controll/delete.png"></a></td>
                        </tr>
                    </c:forEach>

                    </tbody>
                </table>
            </div>
        </article>
    </div>
</section>
<section class="Hui-article-box" id="section2" style="visibility: hidden">
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 产品管理 <span class="c-gray en">&gt;</span> 歌手管理 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
    <div class="Hui-article">
        <div class="pd-20">
            <form action="/singer/insertsinger" method="post" class="form form-horizontal" id="form-user-add">
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>歌手名称：</label>
                    <div class="formControls col-5">
                        <input type="text" class="input-text" value="" placeholder="" id="user-name" name="singerName" style="width: 300px;height: 30px">
                    </div>
                    <div class="col-5"> </div>
                </div>
                <div class="row cl">
                    <div style="left: 130px;position: relative">
                        <label>男:
                            <input type="radio" name="sex" value="男">
                        </label>
                        <label>女:
                            <input type="radio" name="sex" value="女">
                        </label>
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2">歌手简介：</label>
                    <div class="formControls col-5">
                        <textarea name="introduction" cols="" rows="" class="textarea"  placeholder="说点什么...最少输入10个字符" datatype="*10-100" dragonfly="true" nullmsg="备注不能为空！" onKeyUp="textarealength(this,100)"></textarea>
                        <p class="textarea-numberbar"><em class="textarea-length">0</em>/100</p>
                    </div>
                    <div class="col-5"> </div>
                </div>
                <div class="row cl">
                    <div class="col-9 col-offset-2">
                        <input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/H-ui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/H-ui.admin.page.js"></script>
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
                enable:true,
                idKey: "id",
                pIdKey: "pId",
                rootPId: ""
            }
        },
        callback: {
            beforeClick: function(treeId, treeNode) {
                var zTree = $.fn.zTree.getZTreeObj("tree");
                if (treeNode.isParent) {
                    zTree.expandNode(treeNode);
                    return false;
                } else {
                    demoIframe.attr("src",treeNode.file + ".html");
                    return true;
                }
            }
        }
    };

    var code;

    function showCode(str) {
        if (!code) code = $("#code");
        code.empty();
        code.append("<li>"+str+"</li>");
    }

    $(document).ready(function(){
        var t = $("#treeDemo");
        t = $.fn.zTree.init(t, setting, zNodes);
        demoIframe = $("#testIframe");
        demoIframe.bind("load", loadReady);
        var zTree = $.fn.zTree.getZTreeObj("tree");
        zTree.selectNode(zTree.getNodeByParam("id",'11'));
    });
</script>
</body>
</html>
