<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="fore/header.jsp" %>
<head>
    <%--
        <script src="${pageContext.request.contextPath}/style/js/jquery-color-2.1.2.js"></script>
    --%>
    <script src="${pageContext.request.contextPath}/style/js/jquery-color-2.1.2.js"></script>
    <script src="${pageContext.request.contextPath}/style/js/fore_home.js"></script>
        <script src="${pageContext.request.contextPath}/style/js/jquery.js"></script>
    <link href="${pageContext.request.contextPath}/style/css/fore_home1.css" rel="stylesheet"/>

    <title>小熊音乐</title>
    <style>

    </style>
</head>
<body>
<nav>
    <div class="header">
        <img src="${pageContext.request.contextPath}/style/images/logo/logo.jpg">
        <div class="mallSearch">
            <form action="${pageContext.request.contextPath}/home/search" method="get">
                <div class="mallSearch-input">
                    <input class="header_search_input" type="text" name="searchname" placeholder="搜索 "
                           maxlength="50">
                    <input class="header_search_button" type="submit" value="搜索">
                </div>
            </form>
            <c:choose>
                <c:when test="${user!=null}">
                            <img class="img8" style="position: relative;left: 590px;top: -43px;" id="img_home_profile_picture"
                                 src="${pageContext.request.contextPath}/home/img1/default.png"
                                 alt="头像" title="头像" width="32px" height="32px">
                            <ul class="yyy" style="position: relative;left: 590px;top: -43px;">
                                <li >
                                    <a href="/user/usermanagement"> 个人账户</a>
                                </li>

                            </ul>
                            <ul class="yyy" style="position: relative;left: 590px;top: -43px;">
                                <li>
                                    <a href="">退出</a>
                                </li>
                            </ul>

                </c:when>
              <c:otherwise>
                  <a href="/user/login" style=" background-color: #0f9ae0;position: relative;left: 590px;top: -43px;"><img
                          src="${pageContext.request.contextPath}/home/img1/login.png"></a>
              </c:otherwise>
            </c:choose>
            <ul>
                <c:forEach items="${requestScope.categoryList}" var="category" varStatus="i">
                    <c:if test="${i.index<9}">
                        <li><a href="${pageContext.request.contextPath}/product?category_id=${category.category_id}"
                                <c:if
                                        test="${i.index % 2 != 0}"> style="color: #FF0036"</c:if>>${fn:substring(category.category_name,0,fn:indexOf(category.category_name,' /'))}</a>
                        </li>
                    </c:if>
                </c:forEach>
            </ul>
        </div>
    </div>
    <div class="home_nav">
        <a href="${pageContext.request.contextPath}/home/show" target="_blank" style="left: 260px;position: absolute;text-decoration: none">首页</a>
        <a href="${pageContext.request.contextPath}/solar/selectsolar" target="_blank" style="left: 340px;position: absolute;text-decoration: none">榜单</a>
        <a href="#" target="_blank" style="left: 420px;position: absolute;text-decoration: none">歌手</a>
        <a href="/mall/selectallbystatus" target="_blank" style="left: 500px;position: absolute;text-decoration: none">商城</a>
    </div>
</nav>
<div class="banner">
    <c:forEach var="product" items="${skipphotos}" varStatus="i">
        <img src="${pageContext.request.contextPath}/style/images/banner2/${product.num}.jpg"
             name="${product.num}" id="banner${i.count}"
             <c:if test="${i.count == 1}">style="display: block;background-repeat: no-repeat;"</c:if> />
    </c:forEach>
</div>
<div class="banner_main">

    <ul class="banner_slider">
        <li id="slider_1" style="background: rgba(255,255,255,0.4)"></li>
        <li id="slider_2"></li>
        <li id="slider_3"></li>
        <li id="slider_4"></li>
        <li id="slider_5"></li>
    </ul>
    <a href="#"></a>
</div>

<div class="banner_do">
    <div class="banner_goods">
        <div class="banner_goods_type">
            <div class="banner_goods_title">
                <span></span>
                <p>推荐音乐</p>
            </div>
            <div class="banner_goods_items">
                <c:forEach items="${songs}" var="product" varStatus="i">
                    <c:if test="${i.index<10}">
                        <div class="banner_goods_item2">
                            <div class="banner_goods_item"
                                 style="background-image: url('${pageContext.request.contextPath}${product.song.pictureFile}');">
                                <a href="/fore/product/${product.song.id}" class="goods_link"></a>
                            </div>
                            <div class="banner_goods_item3">
                                <a href="${pageContext.request.contextPath}/home/test?id=${product.song.id}"
                                   class="goods_name">${product.song.songName}</a>
                                <div class="banner_goods1">歌手:${product.song.singerName}</div>
                                <div style="position: relative;float: right;color: rgb(156,156,157);margin-top: 5px">
                                    点击量:${product.clicks.count}次
                                </div>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
<div class="banner_add">
    <div class="banner_do1">
        <div class="banner_goods">
            <div class="banner_goods_type">
                <div class="banner_goods_title">
                    <span></span>
                    <p>最新音乐</p>
                </div>
                <div class="banner_goods_items">
                    <c:set var="startIndex" value="${fn:length(songs)-1 }"></c:set>
                    <c:forEach items="${songs}" var="product" varStatus="i">
                        <c:if test="${i.index>songs.size()-4}">
                            <div class="banner_goods_item5">
                                <div class="banner_goods_item1"
                                     style="background-image: url('${pageContext.request.contextPath}${product.song.pictureFile}');">
                                    <a href="/fore/product/${product.song.id}" class="goods_link"></a>
                                </div>
                                <div class="banner_goods_item6">
                                    <a href="${pageContext.request.contextPath}/home/test?id=${product.song.id}"
                                       class="goods_name">${product.song.songName}</a>
                                    <div class="banner_goods1">歌手:${product.song.singerName}</div>
                                    <div style="position: relative;left: 480px;color: rgb(156,156,157);margin-top: 20px">
                                        点击量:${product.clicks.count}次
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
    <div class="right" style="position: relative;left: 1104px;top: -480px;width: 320px;height: 440px;border: 1px solid rgb(223,223,223);">
        <div style="position: relative;width: 100%;height: 30px;background-color:grey">
            <span style="position: relative;width: 100%;height: 100%;left: 125px;top: 4px;font-family: 'Microsoft YaHei UI';font-size: 20px">热门音乐</span>
        </div>
        <c:forEach items="${listHighMusic}" var="highMusic">
            <div style="width: 200px;height: 70px;position: relative;left:45px;top:10px">
                <ul>
                    <li>
                        <img style="width: 50px;height: 50px" src="${pageContext.request.contextPath}${highMusic.pictureFile}">
                        <a href="${pageContext.request.contextPath}/home/test?id=${highMusic.id}" style="color: cornflowerblue">${highMusic.songName}</a>
                        <span style="display: block;position: relative;left: 50px;top: -20px;color: grey;font-size: 15px;">歌手:${highMusic.singerName}</span>
                    </li>
                </ul>

            </div>
        </c:forEach>
    </div>
</div>
<script>
    $(function(){
        $(".img8").hover(function(){
            $("li.yyy").hide();
        },function(){
            $("li.yyy").show();
        });
    });
</script>


</body>
