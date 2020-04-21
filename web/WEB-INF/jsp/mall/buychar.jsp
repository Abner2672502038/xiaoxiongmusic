<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2019/10/20
  Time: 9:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购物车</title>
    <script src="${pageContext.request.contextPath}/style/js/jquery-color-2.1.2.js"></script>
    <script src="${pageContext.request.contextPath}/style/js/fore_home.js"></script>
    <script src="${pageContext.request.contextPath}/style/js/jquery.js"></script>
    <link href="${pageContext.request.contextPath}/style/css/fore_home.css" rel="stylesheet"/>
</head>
<body>
<nav>
    <div class="header">
        <img src="${pageContext.request.contextPath}/style/images/logo/logo.jpg">
        <div><span style="font-size: 30px;font-weight: bold;position: relative;top: 30px;">小熊商城</span></div>
        <div class="mallSearch">
            <form action="${pageContext.request.contextPath}/product" method="get" style="top: 10px; position: relative;top: -48px;">
                <div class="mallSearch-input" >
                    <input  class="header_search_input" type="text" name="product_name" placeholder="搜索"
                            maxlength="50">
                    <input class="header_search_button" type="submit" value="搜索">
                </div>
            </form>
        </div>
    </div>
</nav>
<div class="banner_goods_title">
    <span style="position: relative;left: -875px;top: 20px;color: red"></span>
    <p style="position: relative;left: -880px;top: 18px;color: red">购物车</p>
</div>
<table style="width: 1000px;position: relative;left: 200px;" >
    <thead>
    <tr>
        <th></th>
        <th>商品</th>
        <th>金额</th>
        <th>数量</th>
        <th>小计</th>
        <th>操作</th>
    </tr>
    </thead>

    <tbody>
    <tr>全部商品</tr>
        <c:forEach items="${list}" var="smalllist" >
    <tr align="center">
        <td><img src="${pageContext.request.contextPath}${smalllist.mallProduct.picturePath}" style="width: 50px;height: 50px"></td>
        <td id="classifyId"><center>${smalllist.mallProduct.productName}</center></td>
        <td id="classifyname"><center>${smalllist.mallProduct.productPrice}</center></td>
        <td><center>${smalllist.count}</center></td>
        <td>${smalllist.money}</td>
        <td><img src="${pageContext.request.contextPath}/style/images/controll/delete.png" style="left: 10px;position: relative" onclick="deleteclassify()"></td>
    </tr>
    </c:forEach>
    </tbody>
</table>
<div style="position: relative;left: 500px">
    <span style="position: relative;left: 400px;top: 80px;">合计:${allmoney}</span>
    <a href="/mall/pay/${allmoney}">
        <div style="width: 140px; height: 60px; background-color: rgb(211,58,49);position: relative;left: 500px;top: 20px;"><center><h3 style="align-content: center;position:relative;top: 18px;color: rgb(255,255,255)">结算</h3></center></div>
    </a>
</div>
<div class="banner_do" style="position: relative;top: 40px;height: 100%">
    <div class="banner_goods"style="height: 1200px">
        <div class="banner_goods_type">
            <div class="banner_goods_title">
                <span></span>
                <p >音乐精品</p>
            </div>
            <div class="banner_goods_items">
                <c:forEach items="${mallProducts}" var="product" varStatus="i">
                    <div class="banner_goods_item2">
                        <div class="banner_goods_item">
                            <a href="/fore/product/${product.id}" class="goods_link"></a>
                            <img src="${pageContext.request.contextPath}${product.picturePath}">
                            <a href="/fore/product/${product.id}"
                               class="goods_name">${product.productName}</a>
                            <span class="goods_price">￥${product.productPrice}</span>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>

</body>
</html>
