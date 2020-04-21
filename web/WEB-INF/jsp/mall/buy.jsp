<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2019/10/20
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.css">
<%--
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/css/index.css"/>
--%>
    <script src="${pageContext.request.contextPath}/jq.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/font_it0npzs4wip/iconfont.css">
    <script src="${pageContext.request.contextPath}/style/js/jquery-color-2.1.2.js"></script>
    <script src="${pageContext.request.contextPath}/style/js/fore_home.js"></script>
    <script src="${pageContext.request.contextPath}/style/js/jquery.js"></script>
    <link href="${pageContext.request.contextPath}/style/css/fore_home.css" rel="stylesheet"/>
    <title>购买商品</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            border: 0;
            outline: 0
        }

        ul,
        li {
            list-style: none;
        }

        a {
            text-decoration: none;
        }

        a:hover {
            cursor: pointer;
            text-decoration: none;
        }

        a:link {
            text-decoration: none;
        }

        img {
            vertical-align: middle;
        }

        .btn-numbox {
            margin-top: 20px;
            position: relative;
            left: 30px;
        }

        .btn-numbox li {
            float: left;
        }

        .btn-numbox li .number,
        .kucun {
            display: inline-block;
            font-size: 12px;
            color: #808080;
            vertical-align: sub;
        }

        .btn-numbox .count {
            overflow: hidden;
            margin: 0 16px 0 -20px;
        }

        .btn-numbox .count .num-jian,
        .input-num,
        .num-jia {
            display: inline-block;
            width: 28px;
            height: 28px;
            line-height: 28px;
            text-align: center;
            font-size: 18px;
            color: #999;
            cursor: pointer;
            border: 1px solid #e6e6e6;
        }
        .btn-numbox .count .input-num {
            width: 58px;
            height: 30px;
            color: #333;
            border-left: 0;
            border-right: 0;
        }
    </style>
</head>
<body>
<nav>
    <div class="header">
        <img src="${pageContext.request.contextPath}/style/images/logo/logo.jpg">
        <div><span style="font-size: 30px;font-weight: bold;position: relative;top: 30px;">小熊商城</span></div>
        <a style="position: relative;left: 700px;top: -10px;" href="/mall/showcar">
            <svg t="1571541816103" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg"
                 p-id="3425" width="48" height="48">
                <path d="M376.15625 735.59375q16.03125 0 30.375 5.90625t25.3125 16.453125 16.875 24.890625 5.90625 30.375-5.90625 30.375-16.875 24.890625-25.3125 16.875-30.375 6.328125q-16.875 0-30.796875-6.328125t-24.890625-16.875-16.875-24.890625-5.90625-30.375 5.90625-30.375 16.875-24.890625 24.890625-16.453125 30.796875-5.90625zM727.15625 737.28125q16.03125 0 30.796875 5.90625t25.3125 16.453125 16.875 24.890625 6.328125 30.375-6.328125 30.375-16.875 24.890625-25.3125 16.875-30.796875 6.328125-30.375-6.328125-24.890625-16.875-16.875-24.890625-6.328125-30.375 6.328125-30.375 16.875-24.890625 24.890625-16.453125 30.375-5.90625zM868.90625 258.03125q23.625 0 36.703125 6.328125t18.5625 15.609375 5.0625 19.828125-2.953125 18.140625-10.546875 31.21875-18.140625 51.890625-19.828125 56.109375-14.765625 43.875q-10.96875 33.75-27.84375 46.828125t-41.34375 13.078125l-28.6875 0-54.84375 0-71.71875 0-78.46875 0-209.25 0 12.65625 75.9375 425.25 0q40.5 0 40.5 34.59375 0 16.875-8.015625 29.109375t-31.640625 12.234375l-40.5 0-78.46875 0-97.03125 0-98.71875 0-81 0-46.40625 0q-16.875 0-28.265625-7.59375t-18.984375-19.828125-12.234375-26.578125-7.171875-27q-0.84375-5.0625-4.640625-24.46875t-9.28125-48.515625-12.234375-64.96875-13.5-72.140625q-16.03125-85.21875-36.28125-189.84375l-63.28125 0q-12.65625 0-21.09375-6.328125t-13.921875-15.1875-7.59375-18.984375-2.109375-18.5625q0-16.875 11.390625-27.84375t30.796875-10.96875l18.5625 0 16.875 0 21.09375 0 28.6875 0q16.875 0 27 5.0625t16.03125 12.65625 8.4375 16.03125 4.21875 14.34375q1.6875 6.75 3.375 18.984375t3.375 24.890625q2.53125 15.1875 5.0625 32.0625l577.125 0z"
                      fill="#d81e06" p-id="3426"></path>
            </svg>
            <span id="buy" style="height: 50px;width: 50px;border-radius:10px;background-color:red;position: relative;left:-13px;top: -40px;color: #ffffff">${count}</span>
        </a>
    </div>
</nav>
<div class="wrap1 ">
    <div class="main" style="height: 500px">
        <div class="zuo">
            <div class="lunbtu" style="height: 253px;width:240px;position: relative;top: -150px;left: 124px;">
                <ul class="tp-list">
                    <li class="tp-item active"><img style="height: 200px;height: 200px;position: relative;top: 213px;" src="${pageContext.request.contextPath}${mallProduct.picturePath}"
                                                    class="active_picture"></li>
                </ul>
            </div>
        </div>
        <div class="you" style="position: relative;left: 460px;top: -84px;">
            <div class="kuai1">
                <div class="youwenzi1" style="position: relative;top: -104px;font-size: 20px;font-weight: bold">${mallProduct.productName}</div>

            </div>
            <div class="kuai2">
                <div class="">
                    <div>
                        <div style="font-size: 30px;color: red;position: relative;top: -45px;">
                            ￥${mallProduct.productPrice}元 &nbsp;
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <ul class="btn-numbox">
                    <li><span class="number" style="position: relative;left: -30px;font-size: 20px">数量:</span></li>
                    <li>
                        <ul class="count">
                            <li><span id="num-jian" class="num-jian">-</span></li>
                            <li><input type="text" class="input-num" id="input-num" value="0"/></li>
                            <li><span id="num-jia" class="num-jia">+</span></li>
                        </ul>
                    </li>
                </ul>
            </div>

            <div class="kuai5kuang2" style="position: relative;top: 50px;left: -160px">
                <div class="youwenzi11 glyphicon glyphicon-ok-sign" style="float: left;border-right: 10px">7天无理由退货&nbsp&nbsp&nbsp</div>
                <div class="youwenzi12 glyphicon glyphicon-ok-sign" style="float: left">15天质量问题换货&nbsp&nbsp&nbsp</div>
                <div class="youwenzi13 glyphicon glyphicon-ok-sign">365天保修</div>
            </div>
            <div class="kuai5">
                <div class="kuai5kuang1">
                    <div class="youwenzi9" style="position: relative;top: 120px;">
                        <div id="add" onclick="addcar()" style="width: 120px;height: 60px;background-color: orangered;color: rgb(255,255,255)"><center><span style="align-content: center;position: relative;top: 10px;font-size: 20px">加入购物车</span></center></div>
                    </div>
                    <div class="kuai5kongge"></div>
                </div>

            </div>
        </div>
    </div>
</div>
<script>
    var num_jia = document.getElementById("num-jia");
    var num_jian = document.getElementById("num-jian");
    var input_num = document.getElementById("input-num");

    num_jia.onclick = function() {

        input_num.value = parseInt(input_num.value) + 1;
    }

    num_jian.onclick = function() {

        if(input_num.value <= 0) {
            input_num.value = 0;
        } else {

            input_num.value = parseInt(input_num.value) - 1;
        }

    }

    function addcar() {
        var product_name = $.trim($("#input-num").val());
        document.getElementById("buy").innerText = parseInt(input_num.value)+parseInt(${count});
        $.ajax({
            url: "/mall/insertbuycar",
            async: true,
            data: {
                "id": ${mallProduct.id},
                "count":product_name
            },
            type: "post",
            success: function (data) {
                if (data == "success") {
                    alert("添加成功");
                }
            }
        });
    }

</script>

<%--
<script src="${pageContext.request.contextPath}/style/js/index.js"></script>
--%>


</body>
</html>

