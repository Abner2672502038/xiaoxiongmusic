<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2019/10/5
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改密码</title>
</head>
<body>
<%@include file="userPublic.jsp"%>
<form action="/user/doupdatepassword" method="post">
    <label style="position: relative;left: -484px;top: 125px;display: block">新密码:<input type="text" name="new1" ></label>
    <label style="position: relative;left: -500px;top: 150px;display: block">确认密码:<input type="text" name="actual"></label>
    <input style="position: relative;margin-left: 635px;margin-top: 120px;height: 40px;" type="text"class="form-control form_control" name="verifyCode" placeholder="验证码">
    <img id="img" src="/verify/getverify"><br>
    <a style="position: relative;margin-left: 620px"href="javascript:_change()">看不清换一张</a>
    <input type="submit" placeholder="提交" style="position: relative;left: -39px;top: 40px;width: 90px;height: 30px;border-radius: 5px;background-color: darkred;color: white;border: 0px">
</form>
<script type="text/javascript">
        function _change(){
            /**
             *1.得到image图片
             *2.修改其src为/test/VerifyCodeServlet
             */
            var imgEle=document.getElementById("img");
            imgEle.src="/verify/getverify?a="+new Date().getTime();
        }
</script>
</body>
</html>
