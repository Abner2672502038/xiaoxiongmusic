<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2019/10/19
  Time: 9:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="header1.jsp" %>
<head>
    <script src="${pageContext.request.contextPath}/style/js/jquery-color-2.1.2.js"></script>
    <script src="${pageContext.request.contextPath}/style/js/fore_home.js"></script>
    <script src="${pageContext.request.contextPath}/style/js/jquery.js"></script>
    <link href="${pageContext.request.contextPath}/style/css/fore_home.css" rel="stylesheet"/>
 <title>音乐商城</title>
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
<div style="width: 900px;height: 400px;position: relative;left: 200px;">
    <img src="${pageContext.request.contextPath}/mallpicture/image/head.jpg">
</div>
<div class="banner_do">
    <div class="banner_goods">
        <div class="banner_goods_type">
            <div class="banner_goods_title">
                <span></span>
                <p>音乐精品</p>
            </div>
            <div class="banner_goods_items">
                <c:forEach items="${mallProducts}" var="product" varStatus="i">
                        <div class="banner_goods_item2">
                            <div class="banner_goods_item">
                                <a href="/mall/buy/${product.id}" class="goods_link"></a>
                                <img src="${pageContext.request.contextPath}${product.picturePath}">
                                <a href="/mall/buy/${product.id}"
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
