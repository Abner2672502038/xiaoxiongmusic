<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2019/9/22
  Time: 21:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="${pageContext.request.contextPath}/style/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/style/js/fore_home.js"></script>
    <link src="${pageContext.request.contextPath}/style/css/fore_home.css" rel="stylesheet"/>
    <title>小熊音乐主页</title>

</head>
<body>
<nav>
    <div class="header">
        <img src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/logo2.png">
        <div class="mallSearch">
            <form action="${pageContext.request.contextPath}/product" method="get">
                <div class="mallSearch-input">
                    <input class="header_search_input" type="text" name="product_name" placeholder="搜索 电子 品牌/店铺"
                           maxlength="50">
                    <input class="header_search_button" type="submit" value="搜索">
                </div>
            </form>
        </div>
    </div>


</nav>
<div class="banner">
    <c:forEach var="product" items="${skipphotos}" varStatus="i">
        <img src="${pageContext.request.contextPath}/style/images/banner2/${product.num}.jpg"
             name="${product.num}" id="banner${i.count}"
             <c:if test="${i.count == 1}">style="display: block;"</c:if> />
    </c:forEach>
</div>
<div class="banner_main">
    <ul class="banner_nav">
      <%--  <c:forEach items="${categoryList}" var="category" varStatus="i">
            <li data-toggle="${category.id}" data-status="">
                <img src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/smallpicture/${i.count}.png">
                <a href="${pageContext.request.contextPath}/product?category_id=${category.id}">${category.categoryName}</a>
                <div class="banner_div" name="${category.categoryName}">
                </div>
            </li>
        </c:forEach>--%>
    </ul>
    <ul class="banner_slider">
        <li id="slider_1" style="background: rgba(255,255,255,0.4)"></li>
        <li id="slider_2"></li>
        <li id="slider_3"></li>
        <li id="slider_4"></li>
        <li id="slider_5"></li>
        <li id="slider_6"></li>
    </ul>
    <a href="#"></a>
</div>
<div class="banner_do">
    <div class="banner_goods">
   <%--     <c:forEach items="${categoryList}" var="category">
            <c:if test="${fn:length(category.product)>0}">
                <div class="banner_goods_type">
                    <div class="banner_goods_title">
                        <span></span>
                        <p>${category.categoryName}</p>
                    </div>
                    <a href="${pageContext.request.contextPath}/product?category_id=${category.id}"><img
                            class="banner_goods_show"
                            src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/show/${category.id}.jpg"></a>
                    <div class="banner_goods_items">
                        <c:forEach items="${category.product}" var="product" varStatus="i">
                            <c:if test="${i.index<8}">
                                <div class="banner_goods_item">
                                    <a href="/fore/product/${product.id}" class="goods_link"></a>
                                    <img src="${pageContext.request.contextPath}${product.paths[0].path}">
                                    <a href="/fore/product/${product.id}"
                                       class="goods_name">${product.xinghao}</a>
                                    <span class="goods_price">￥${product.price}</span>
                                </div>
                            </c:if>
                        </c:forEach>
                    </div>
                </div>
            </c:if>
        </c:forEach>--%>
    </div>
    <div class="endDiv"></div>
</div>
</body>
</html>
