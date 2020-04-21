<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2019/10/19
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/css/admin_main.css">
    <script type="text/javascript" href="${pageContext.request.contextPath}/style/js/jquery.js"></script>
    <style rel="stylesheet">
        .bootstrap-select:not([class*=col-]):not([class*=form-control]):not(.input-group-btn){
            margin: 0 130px 0 0;
        }
        .frm_input{
            margin-right: 130px;
        }
        .frm_error_msg{
            white-space:nowrap;
        }
        .warn_height{
            max-height: 25px;
        }

        div.br {
            height: 20px;
        }

        .details_property_list label {
            margin-left: 10px;
        }
    </style>
</head>

<body>
<%@include file="public1.jsp"%>
<section class="Hui-article-box" id="section1" style="visibility: visible">
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 商城管理 <span class="c-gray en">&gt;</span> 添加商品 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
    <div style="position: relative;left: 20px;top: 10px;">
            <div class="details_div_first" >
                <input type="hidden" value="${requestScope.product.product_id}" id="details_product_id"/>

                <label class="frm_label text_info" id="lbl_product_isEnabled" for="radio_product_isEnabled_true">产品状态</label>
                <input id="radio_product_isEnabled_true" name="status" type="radio" value="1" checked>
                <label class="frm_label text_info" id="lbl_product_isEnabled_true" for="radio_product_isEnabled_true">销售中</label>
                <input id="radio_product_isEnabled_false" name="status" type="radio" value="0">
                <label class="frm_label text_info" id="lbl_product_isEnabled_false" for="radio_product_isEnabled_false">停售中</label>
                <span class="frm_error_msg" id="text_productState_details_msg"></span>
            </div>
            <div class="details_div">
                <span class="details_title text_info">基本信息</span>

                <div class="frm_div">
                    <label class="frm_label text_info" id="lbl_product_id">产品编号</label>
                    <span class="details_value" id="span_product_id">系统指定</span>
                    <label class="frm_label text_info" id="lbl_product_create_date">上架日期</label>
                    <span class="details_value" id="span_product_create_date">系统指定</span>
                </div>
                <div class="frm_div">
                    <label class="frm_label text_info" id="lbl_product_name" for="input_product_name">产品名称</label>
                    <input name="productname" class="frm_input" id="input_product_name" type="text" maxlength="50"/>
                </div>
                <div class="frm_div_last">
                    <label class="frm_label text_info" id="lbl_product_price" for="input_product_price">产品价格</label>
                    <input name="productPrice" class="frm_input details_unit"  id="input_product_price" type="text" maxlength="10" value="${requestScope.product.product_price}"/>
                    <span class="details_unit text_info">元</span>
                </div>
                <div style="position: relative;top: 15px;">
                    <label class="frm_label text_info" >产品数量</label>
                    <input type="text"  id="count" name="count" class="frm_input">
                </div>

            </div>
            <div class="details_div">
                <span class="details_title text_info">产品图片</span>
                <ul class="details_picList" id="product_single_list">
                    <li class="details_picList_fileUpload">
                        <svg class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="1528"  width="40" height="40">
                            <path d="M0 512C0 229.230208 229.805588 0 512 0 794.769792 0 1024 229.805588 1024 512 1024 794.769792 794.194412 1024 512 1024 229.230208 1024 0 794.194412 0 512Z" p-id="1529" fill="#FF7874"></path>
                            <path d="M753.301333 490.666667l-219.946667 0L533.354667 270.741333c0-11.776-9.557333-21.333333-21.354667-21.333333-11.776 0-21.333333 9.536-21.333333 21.333333L490.666667 490.666667 270.72 490.666667c-11.776 0-21.333333 9.557333-21.333333 21.333333 0 11.797333 9.557333 21.354667 21.333333 21.354667L490.666667 533.354667l0 219.904c0 11.861333 9.536 21.376 21.333333 21.376 11.797333 0 21.354667-9.578667 21.354667-21.333333l0-219.946667 219.946667 0c11.754667 0 21.333333-9.557333 21.333333-21.354667C774.634667 500.224 765.077333 490.666667 753.301333 490.666667z" p-id="1530" fill="#FFFFFF"></path>
                        </svg>
                        <span>点击上传</span>
                        <input type="file" name="myfile1s" onchange="uploadImage(this)" accept="image/*">
                    </li>
                </ul>
            </div>
            <div class="details_tools_div">
                <input class="frm_btn" id="btn_product_save" type="button" value="保存"/>
                <input class="frm_btn frm_clear" id="btn_product_cancel" type="button" value="取消"/>
            </div>
    </div>

</section>

<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/H-ui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/H-ui.admin.page.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/WdatePicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/laypage.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/jquery.ztree.all-3.5.min.js"></script>
<script>

    $(function () {
        //单击保存按钮时
        $("#btn_product_save").click(function () {
            var product_isEnabled = $("input[name='status']:checked").val();
            var product_name = $.trim($("#input_product_name").val());
            var product_price = $.trim($("#input_product_price").val());
            var count = $.trim($("#count").val());
            //校验数据合法性
            var yn = true;
            if (product_isEnabled === undefined) {
                styleUtil.errorShow($("#text_productState_details_msg"), "请选择产品状态！");
                yn = false;
            }
            if (product_name === "") {
                styleUtil.basicErrorShow($("#lbl_product_name"));
                yn = false;
            }
            if (product_price === "" || isNaN(product_price)) {
                styleUtil.basicErrorShow($("#lbl_product_price"));
                yn = false;
            }

            //产品图片List
            var productSingleImageList = [];
            $("#product_single_list").children("li:not(.details_picList_fileUpload)").each(function () {
                var img = $(this).children("img");
                if (img.attr("name") === "new") {
                    productSingleImageList.push(img.attr("src"));
                }
            });
            //数据集
            var dataList = {
                "product_isEnabled": product_isEnabled,
                "product_name": product_name,
                "product_price": product_price,
                "count": count,
                "productSingleImageList": productSingleImageList,
            };
            doAction(dataList, "http://localhost:8080/mall/insertproduct", "post");
        });
        //改变产品状态时
        $('input:radio').click(function () {
            if($(this).val() === "1"){
                styleUtil.errorShow($("#text_productState_details_msg"),"提示：产品停售时无法进行交易");
            } else {
                styleUtil.errorHide($("#text_productState_details_msg"));
            }
        });
        //单击取消按钮时
        $("#btn_product_cancel").click(function () {
            $(".menu_li[data-toggle=product]").click();
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
        //判断大小
        if (file.size > 512000) {
            $("#btn-ok").unbind("click").click(function () {
                $("#modalDiv").modal("hide");
            });
            $(".modal-body").text("图片大小不能超过500K！");
            $('#modalDiv').modal();
            return;
        }
        var ul = $(fileDom).parents(".details_picList");
        //清空值
        $(fileDom).val('');
        var formData = new FormData();
        formData.append("file", file);

        $.ajax({
            url: "/mall/uploadpicture",
            type: "post",
            data: formData,
            contentType: false,
            processData: false,
            dataType: "json",
            mimeType: "multipart/form-data",
            success: function (data) {
                $(fileDom).attr("disabled", false).prev("span").text("上传图片");
                if (data.success) {
                    $(fileDom).parent('.details_picList_fileUpload').before("<li><img src='${pageContext.request.contextPath}/mallpicture/image" + data.fileName + "' width='128px' height='128px' name='new'/></li>");
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
    //产品操作
    function doAction(dataList, url, type) {
        console.log(url);
        $.ajax({
            url: url,
            type: type,
            data: dataList,
            traditional: true,
            success: function (data) {
                $("#btn_product_save").attr("disabled", false).val("保存");
                if (data.address) {
                    window.location.href="http://localhost:8080/tmall/beforlogin"
                    $(".modal-body").text("保存成功！");
                    $('#modalDiv').modal();
                }
            },
            beforeSend: function () {
                $("#btn_product_save").attr("disabled", true).val("保存中...");
            },
            error: function () {

            }
        });
    }
</script>
</body>
</html>
