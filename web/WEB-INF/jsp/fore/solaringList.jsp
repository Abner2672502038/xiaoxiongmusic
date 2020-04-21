<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2019/10/6
  Time: 22:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>榜单</title>
</head>
<body>
<%@include file="pubic.jsp"%>
<div>
    <table>
        <c:forEach items="${list}" var="song" >
            <div style="border-bottom: 1px solid rgb(242,242,242);position: relative;left: 530px;top: 10px;align-content: center;width: 600px;">
                <ul >
                    <li><a href="/solar/test?id=${song.id}" style="text-decoration: none">${song.id}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${song.singerName}-${song.songName}</a></li>
                </ul>

            </div>
        </c:forEach>
    </table>
    <div style="width: 200px;height: 50px;position: relative;left: 320px;top: -950px;">
        <span>热门榜单</span>
    </div>
    <div style="width: 200px;height: 33px;position: relative;left: 320px;top: -950px;">
      <a style="color: #0e90d2">小熊飙升榜</a>
    </div>
</div>
</body>
</html>
