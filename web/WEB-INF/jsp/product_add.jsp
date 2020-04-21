<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2019/9/17
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

    <script src="${pageContext.request.contextPath}/style/js/jquery.js"></script>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/css/H-ui.min.css"/>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/css/H-ui.admin.css"/>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/css/iconfont.css"/>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/css/skin.css" id="skin"/>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/css/style.css"/>

    <link href="${pageContext.request.contextPath}/style/css/webuploader.css" rel="stylesheet" type="text/css"/>

    <style>
        .details_div_first .frm_label,.details_div .frm_label,.details_div_last .frm_label{
            min-width: 75px;
        }
        .details_div_first>div,.details_div>div,.details_div_last>div{
            margin-left: 10px;
        }
        .details_div{
            margin-top: 20px;
            padding-top: 20px;
            margin-left: 200px;
            border-top: 1px solid #e9ebef;
        }
        .details_div_last{
            margin-bottom: 40px;
        }
        .details_div>.details_title{
            display: block;
            color:#333;
            margin-bottom: 20px;
        }
        .details_div>.details_picList{
            font-size: 0;
            padding: 0;
            margin: 0 0 0 10px;
        }
        .details_picList>li{
            border: 2px dashed #ccc;
            display: inline-block;
            list-style: none;
            padding: 1px;
            margin: 0 10px 10px;
            vertical-align: top;
            cursor: pointer;
        }
        .details_picList>.details_picList_fileUpload{
            position: relative;
        }
        .details_picList_fileUpload>input[type="file"]{
            cursor: pointer;
            width: 128px;
            height: 128px;
            opacity: 0;
        }
        .details_picList_fileUpload>svg{
            position: absolute;
            left: 0;
            right: 0;
            margin: 25px auto 0;
        }
        .details_picList_fileUpload>span{
            text-align: center;
            position: absolute;
            display: inline-block;
            left: 0;
            right: 0;
            margin: 80px auto 0;
            color:#666;
            line-height: 14px;
            font-size: 12px;
        }

    </style>
    <script>
        $(function () {
            $(".details_picList").on("click","li:not(.details_picList_fileUpload)",function () {
                var img = $(this);
                var productImage_id = img.children("img").attr("name");
                var fileUploadInput = $(this).parents("ul").children(".details_picList_fileUpload");
                if (productImage_id === "new") {
                    $("#btn-ok").unbind("click").click(function () {
                        img.remove();
                        fileUploadInput.css("display", "inline-block");
                        $('#modalDiv').modal("hide");
                    });
                } else {
                    $("#btn-ok").unbind("click").click(function () {
                        $.ajax({
                            url: "/tmall/admin/productImage/" + productImage_id,
                            type: "delete",
                            data: null,
                            success: function (data) {
                                $("#btn-ok").attr("disabled", false).text("确定");
                                if (data.success) {
                                    img.remove();
                                    fileUploadInput.css("display", "inline-block");
                                    $('#modalDiv').modal("hide");
                                } else {
                                    $('#modalDiv').modal("hide");
                                    alert("图片删除异常！");
                                }
                            },
                            beforeSend: function () {
                                $("#btn-ok").attr("disabled", true).text("操作中...");
                            },
                            error: function () {

                            }
                        });
                    });
                }
                $(".modal-body").text("您确定要删除该产品图片吗？");
                $('#modalDiv').modal();
            });
            //获取到输入框焦点时
            $("input:text").focus(function () {
                styleUtil.basicErrorHide($(this).prev("label"));
            });
        });

        //图片上传
        function uploadImage(fileDom) {
            //获取文件
            var file = fileDom.files[0];
            //判断类型
            var imageType = /^image\//;
            if (file === undefined || !imageType.test(file.type)) {
                $("#btn-ok").unbind("click").click(function () {
                    $("#modalDiv").modal("hide");
                });
                $(".modal-body").text("请选择图片！");
                $('#modalDiv').modal();
                return;
            }
            var ul = $(fileDom).parents(".details_picList");
            var type;
            if (ul.attr("id") === "product_single_list") {
                type = "single";
            } else {
                type = "details";
            }
            //清空值
            $(fileDom).val('');
            var formData = new FormData();
            formData.append("uploadfile", file);
            formData.append("imageType", type);
            //上传图片
            $.ajax({
                url: "/upload/admin/uploadProductImage",
                type: "post",
                data: formData,
                contentType: false,
                processData: false,
                dataType: "json",
                mimeType: "multipart/form-data",
                success: function (data) {
                    $(fileDom).attr("disabled", false).prev("span").text("上传图片");
                    if (data.success) {
                        if (type === "single") {
                            $(fileDom).parent('.details_picList_fileUpload').before("<li><img src='${pageContext.request.contextPath}/fileupload/image/" + data.fileName + "' width='128px' height='128px' name='new'/></li>");

                        } else {
                            $(fileDom).parent('.details_picList_fileUpload').before("<li><img src='${pageContext.request.contextPath}/fileupload/image/" + data.fileName + "' width='128px' height='128px' name='new'/></li>");

                        }
                    } else {
                        alert("图片上传异常！");
                    }
                },
                beforeSend: function () {
                    $(fileDom).attr("disabled", true).prev("span").text("图片上传中...");
                },
                error: function () {

                }
            });
        }

        $(function () {
            $("#music_sumbit").click(function () {
                var music_name = $.trim($("#song_name").val());
                var music_title = $.trim($("#song_title").val());
                var music_artist = $.trim($("#song_artist").val());
                var music_collection = $.trim($("#song_collection").val());
                var music_type = $.trim($("#song_type").val());
                var music_key = $.trim($("#song_key").val());
                var music_link = $.trim($("#song_link").val());
                var productSingleImageList = [];
                $("#product_single_list").children("li").each(function () {
                    var img = $(this).children("img");
                    if (img.attr("name") === "new") {
                        productSingleImageList.push(img.attr("src"));
                    }
                });
                var music_status = $("input[name='vip']:checked").val();
                var arr = productSingleImageList;
                var temp;
                for(var item in arr) {
                    temp=arr[item];

                }
                var datalist = {
                    "music_name":music_name,
                    "music_title":music_title,
                    "music_artist": music_artist,
                    "music_collection": music_collection,
                    "music_type": music_type,
                    "music_key":music_key,
                    "music_link": music_link,
                    "productSingleImageList": temp,
                    "music_status": music_status,
                };
                doAction(datalist, "/product/insertproduct", "post");
            });

        });

        function doAction(datalist, url, type) {
            $.ajax({
                url:url,
                async: true,
                type:type,
                data: datalist,
                trditional:true,
                success: function (data) {
                    window.location.href = "";
                }

            });


        }

    </script>
</head>
<body>
<div class="page-container">
    <form action="" method="post" class="form form-horizontal" id="form-article-add">
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>歌曲名称：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder=""  id="song_name" name="songName">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">简略标题：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="song_title" name="title">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">参与创作的艺术家：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="song_artist"  name="">
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">唱片集：</label>
            <div class="formControls col-xs-8 col-sm-9 ">
                   <input type="text" value="" class="input-text" id="song_collection">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">歌曲关键字：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" name="" id="song_key" placeholder="多个关键字用英文逗号隔开，限10个关键字" value="" class="input-text">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">是否为VIP歌曲：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <label>是</label> <input type="radio" value="1" name="vip">
                <label>否</label><input type="radio" value="0" name="vip">
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">歌曲类型：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <select id="song_type">
                    <c:forEach items="${list}" var="classify">
                        <option value="-1">请选择音乐类型</option>
                        <option value="${classify.id}">${classify.classifyName}</option>
                    </c:forEach>
                </select>
            </div>
        </div>

        <div class="details_div">
            <span class="details_title text_info">音乐背景</span>
            <ul class="details_picList" id="product_single_list">
                <li class="details_picList_fileUpload">
                    <svg class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="1528"  width="40" height="40">
                        <path d="M0 512C0 229.230208 229.805588 0 512 0 794.769792 0 1024 229.805588 1024 512 1024 794.769792 794.194412 1024 512 1024 229.230208 1024 0 794.194412 0 512Z" p-id="1529" fill="#FF7874"></path>
                        <path d="M753.301333 490.666667l-219.946667 0L533.354667 270.741333c0-11.776-9.557333-21.333333-21.354667-21.333333-11.776 0-21.333333 9.536-21.333333 21.333333L490.666667 490.666667 270.72 490.666667c-11.776 0-21.333333 9.557333-21.333333 21.333333 0 11.797333 9.557333 21.354667 21.333333 21.354667L490.666667 533.354667l0 219.904c0 11.861333 9.536 21.376 21.333333 21.376 11.797333 0 21.354667-9.578667 21.354667-21.333333l0-219.946667 219.946667 0c11.754667 0 21.333333-9.557333 21.333333-21.354667C774.634667 500.224 765.077333 490.666667 753.301333 490.666667z" p-id="1530" fill="#FFFFFF"></path>
                    </svg>
                    <span>点击上传</span>
                    <input type="file" name="file" onchange="uploadImage(this);" accept="image/*">
                </li>
            </ul>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">歌曲文件链接：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input id="song_link" type="text"  style="width:100%;height:30px;">
                </div>
            </div>
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
                <button id="music_sumbit"  class="btn btn-primary radius" type="submit" onclick="insertproduct()"><i
                        class="Hui-iconfont">&#xe632;</i> 提交
                </button>
                <a href="${pageContext.request.contextPath}/admin/home" class="btn btn-secondary radius" type="button"><i
                        class="Hui-iconfont">&#xe632;</i> 保存草稿
                </a>
                <a href="/admin/productlist" class="btn btn-default radius" type="button">
                    &nbsp;&nbsp;取消&nbsp;&nbsp;
                </a>
            </div>
        </div>
    </form>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/H-ui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/H-ui.admin.page.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/jquery.validate.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/validate-methods.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/messages_zh.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/webuploader.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/ueditor.config.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/ueditor.all.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/zh-cn.js"></script>

</body>
</html>
