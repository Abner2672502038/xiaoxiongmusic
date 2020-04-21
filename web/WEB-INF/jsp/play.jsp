<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2019/9/27
  Time: 16:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="referrer" content="no-referrer">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title>音乐播放器</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/home/img/pic.jpg"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/css/html5-doctor-reset-stylesheet.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/css/index.css"/>
    <script src="${pageContext.request.contextPath}/style/js/flexible.js" type="text/javascript" charset="utf-8"></script>
    <title>Title</title>
</head>
<body>
<header>
    <h1 class="song-title"></h1>
    <div class="singer"></div>
</header>
<div class="content">
    <div class="record-wrapper" style="display: block;">
        <div class="record-bg mid">
            <div class="record-pic mid">
                <img src="${pageContext.request.contextPath}/home/img/pic.jpg" alt="唱片图片">
            </div>
        </div>
    </div>
     <div class="lyrics-wrapper">
        <ul class="lyrics"></ul>
    </div>
</div>
<footer>
    <div class="channel" data-channel-id=""></div>
    <div class="progress-bar">
        <%--进度条--%>
        <div class="progress"></div>
        <div class="progress-btn"></div>
    </div>
    <%--控件--%>
    <div class="btns">
        <div class="show-lyrics icon-sides"></div>
        <div class="change-channel icon-middle"></div>
        <div class="play"></div>
        <div class="next icon-middle"></div>
        <div class="mode icon-sides"></div>
    </div>
</footer>
<div class="glass">
    <img>
</div>
<audio id="mic_audio"></audio>

<script src="${pageContext.request.contextPath}/style/js/original_ajax.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/style/js/index.js" type="text/javascript" charset="utf-8"></script>
</body>


</body>
</html>
