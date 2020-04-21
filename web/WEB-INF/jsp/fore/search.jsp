<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2019/10/7
  Time: 7:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询结果</title>
</head>
<body>
<%@include file="pubic.jsp"%>
<div>
    <table>
        <c:forEach items="${list2}" var="song1" >
            <div style="border-bottom: 1px solid rgb(242,242,242);position: relative;left: 530px;top: 10px;align-content: center;width: 600px;">
                <ul >
                    <li><a href="/solar/test?id=${song1.id}" style="text-decoration: none">${song1.id}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${song1.singerName}-${song1.songName}</a></li>
                </ul>

            </div>
        </c:forEach>
    </table>
</div>

</body>
</html>
