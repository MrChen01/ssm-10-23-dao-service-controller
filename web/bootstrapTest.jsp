<%--
  Created by IntelliJ IDEA.
  User: mi
  Date: 2019/9/22
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>

    <style type="text/css">
        div[class^="col-"] {
            border: 1px solid black;
        }
    </style>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container-fluid">
    <div class="row">
    <div class="col-md-1">.col-md-1</div>
    <div class="col-md-1">.col-md-1</div>
    <div class="col-md-1">.col-md-1</div>
    <div class="col-md-1">.col-md-1</div>
    <div class="col-md-1">.col-md-1</div>
    <div class="col-md-1">.col-md-1</div>
    <div class="col-md-1">.col-md-1</div>
    <div class="col-md-1">.col-md-1</div>
    <div class="col-md-1">.col-md-1</div>
    <div class="col-md-1">.col-md-1</div>
    <div class="col-md-1">.col-md-1</div>
    <div class="col-md-1">.col-md-1</div>
    </div>


    <br><br>
    <div class="row">
        <div class="col-lg-11 col-md-8 col-sm-6 col-xs-4">.col-md-8</div>
        <div class="col-lg-1 col-md-4 col-sm-6 col-xs-8">.col-md-4</div>
    </div>
    <br><br>
    <div class="row">
        <div class="col-md-4 col-sm-4 col-xs-4">.col-md-4</div>
        <div class="col-md-4 col-sm-4 col-xs-4">.col-md-4</div>
        <div class="col-md-4 col-sm-4 col-xs-4">.col-md-4</div>
    </div>


    <br><br>
    <div class="row">
        <div class="col-md-6 col-sm-6 col-xs-6">.col-md-6</div>
        <div class="col-md-6 col-sm-6 col-xs-6">.col-md-6</div>
    </div>

    <br><br>
    <div class="row">
        <div class="col-md-6 col-sm-6 col-xs-6 col-lg-12">.col-md-6</div>
        <div class="col-md-6 col-sm-6 col-xs-6 ">.col-md-6</div>
    </div>

    <br><br>
    <div class="row">
        <div class="col-xs-12">.col-md-6</div>
        <div class="col-xs-6">.col-md-6</div>
    </div>
</div>

<br><br><br><br><br><br>

<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    </ol>



    <%--<!-- Wrapper for slides -->--%>
    <%--<div class="carousel-inner" role="listbox">--%>
        <%--<div class="item active">--%>
            <%--<img src="..." alt="...">--%>
            <%--<div class="carousel-caption">--%>

            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="item">--%>
            <%--<img src="..." alt="...">--%>
            <%--<div class="carousel-caption">--%>

            <%--</div>--%>
        <%--</div>--%>

    <%--</div>--%>

    <%--<!-- Controls -->--%>
    <%--<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">--%>
        <%--<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>--%>
        <%--<span class="sr-only">Previous</span>--%>
    <%--</a>--%>
    <%--<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">--%>
        <%--<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>--%>
        <%--<span class="sr-only">Next</span>--%>
    <%--</a>--%>
    <%----%>

</div>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
<script type="text/javascript">


//    $(function () {
//        $('.carousel').carousel({
//            interval: 2000,
//            pause:"hover"
//        })
//    });


</script>
</body>
</html>
