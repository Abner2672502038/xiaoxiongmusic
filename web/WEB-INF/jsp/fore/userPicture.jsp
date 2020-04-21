<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2019/10/5
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改头像</title>
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
        .details_picList>li {
            border: 2px dashed #ccc;
            display: inline-block;
            list-style: none;
            padding: 1px;
            position: relative;
            left: -425px;
            top: 100px;
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
    <script type="text/javascript" src="${pageContext.request.contextPath}/style/js/jquery.min.js"></script>
    <script>
            //图片上传
            function uploadImage1(fileDom) {
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
                    url: "/upload/admin/uploadUserImage",
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
                                $(fileDom).parent('.details_picList_fileUpload').before("<li><img src='${pageContext.request.contextPath}/fileupload/img2/" + data.fileName + "' width='128px' height='128px' name='new'/></li>");

                            } else {
                                $(fileDom).parent('.details_picList_fileUpload').before("<li><img src='${pageContext.request.contextPath}/fileupload/img2/" + data.fileName + "' width='128px' height='128px' name='new'/></li>");

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
                $("#sumbit_img").click(function () {
                    var productSingleImageList = [];
                    $("#product_single_list").children("li").each(function () {
                        var img = $(this).children("img");
                        if (img.attr("name") === "new") {
                            productSingleImageList.push(img.attr("src"));
                        }
                    });
                    var arr = productSingleImageList;
                    var temp;
                    for(var item in arr) {
                        temp=arr[item];

                    }
                    var datalist = {

                        "productSingleImageList": temp,
                    };
                    doAction(datalist, "/user/insertuserImg", "post");
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
                    }

                });


            }

    </script>
</head>
<body>
<%@include file="userPublic.jsp"%>
<div class="details_div">
    <ul class="details_picList" id="product_single_list">
        <li class="details_picList_fileUpload">
            <svg class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="1528"  width="40" height="40">
                <path d="M0 512C0 229.230208 229.805588 0 512 0 794.769792 0 1024 229.805588 1024 512 1024 794.769792 794.194412 1024 512 1024 229.230208 1024 0 794.194412 0 512Z" p-id="1529" fill="#FF7874"></path>
                <path d="M753.301333 490.666667l-219.946667 0L533.354667 270.741333c0-11.776-9.557333-21.333333-21.354667-21.333333-11.776 0-21.333333 9.536-21.333333 21.333333L490.666667 490.666667 270.72 490.666667c-11.776 0-21.333333 9.557333-21.333333 21.333333 0 11.797333 9.557333 21.354667 21.333333 21.354667L490.666667 533.354667l0 219.904c0 11.861333 9.536 21.376 21.333333 21.376 11.797333 0 21.354667-9.578667 21.354667-21.333333l0-219.946667 219.946667 0c11.754667 0 21.333333-9.557333 21.333333-21.354667C774.634667 500.224 765.077333 490.666667 753.301333 490.666667z" p-id="1530" fill="#FFFFFF"></path>
            </svg>
            <span>点击上传</span>
            <input type="file" name="file" onchange="uploadImage1(this);" accept="image/*">
        </li>
    </ul>
    <button id="sumbit_img" type="submit" style="width: 50px;height: 30px;background-color: darkred;border: 0px;color: white;position: relative;left: 500px;top:150px ;" >提交</button>
</div>
</body>
</html>
