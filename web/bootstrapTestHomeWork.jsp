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

        /*html, body {*/
        /*height: 100%;*/
        /*overflow: hidden;*/
        /*}*/

        /*div[class^="col-"] {*/
        /*border: 1px solid black;*/
        /*}*/

        .navbar {
            margin-bottom: 1px !important;
        }

        #showYueQiang{
            float: left;
        }
        
        #backToTop{
            float: right;
        }
    </style>
    <!-- Bootstrap -->
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
    <!--<script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>-->
    <%--<script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>--%>
    <%--<![endif]-->--%>
</head>
<body style="height: 3000px;">

<div class="container-fluid" id="top">
    <div class="row">
        <nav class="navbar navbar-default navbar-inverse">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">广州粤嵌</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">简介 <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">综述</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true"
                               aria-expanded="false">学院 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">IOS学院</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Java学院</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">安卓学院</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">C++学院</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">UI学院</a></li>
                            </ul>
                        </li>
                        <li><a href="#" data-toggle="modal" data-target="#myModal">
                            关于
                        </a></li>
                    </ul>
                    <%--<ul class="nav navbar-nav navbar-right">--%>
                    <%--<li><a href="#">Link</a></li>--%>
                    <%--<li class="dropdown">--%>
                    <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"--%>
                    <%--aria-expanded="false">Dropdown <span class="caret"></span></a>--%>
                    <%--<ul class="dropdown-menu">--%>
                    <%--<li><a href="#">Action</a></li>--%>
                    <%--<li><a href="#">Another action</a></li>--%>
                    <%--<li><a href="#">Something else here</a></li>--%>
                    <%--<li role="separator" class="divider"></li>--%>
                    <%--<li><a href="#">Separated link</a></li>--%>
                    <%--</ul>--%>
                    <%--</li>--%>
                    <%--</ul>--%>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
    </div>

    <div class="row">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="bootstrap-images/nav_01.jpg" alt="...">
                    <%--<div class="carousel-caption">--%>
                    <%--nav01--%>
                    <%--</div>--%>
                </div>
                <div class="item">
                    <img src="bootstrap-images/nav_02.jpg" alt="...">
                    <%--<div class="carousel-caption">--%>
                    <%--nav01--%>
                    <%--</div>--%>
                </div>
                <div class="item">
                    <img src="bootstrap-images/nav_03.jpg" alt="...">
                    <%--<div class="carousel-caption">--%>
                    <%--nav01--%>
                    <%--</div>--%>
                </div>
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>

    <div class="row" style="margin-top: 5px">
        <div class="col-md-4 col-xs-12">
            <div class="thumbnail">
                <img src="bootstrap-images/chrome-logo-small.jpg" alt="...">
                <div class="caption">
                    <h3 style="text-align: center">Java学院</h3>
                    <p style="text-align: center">不管你是Java小白，还是Java零基础，
                        没关系，猿咖学院为大家量身定制了一套《Java高薪就业》课程，你会对Java的核心知识体系有清晰的理解，为接下来的学习打下坚实的基础。</p>
                    <p style="text-align: center">
                        <a href="#" class="btn btn-primary" role="button">Button</a>
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-4 col-xs-12">
            <div class="thumbnail">
                <img src="bootstrap-images/firefox-logo-small.jpg" alt="...">
                <div class="caption">
                    <h3 style="text-align: center">Java学院</h3>
                    <p style="text-align: center">不管你是Java小白，还是Java零基础，
                        没关系，猿咖学院为大家量身定制了一套《Java高薪就业》课程，通过学习这套教程，你会对Java的核心知识体系有清晰的理解，为接下来的学习打下坚实的基础。</p>
                    <p style="text-align: center">
                        <a href="#" class="btn btn-primary" role="button">Button</a>
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-4 col-xs-12">
            <div class="thumbnail">
                <img src="bootstrap-images/safari-logo-small.jpg" alt="...">
                <div class="caption">
                    <h3 style="text-align: center">Java学院</h3>
                    <p style="text-align: center">不管你是Java小白，还是Java零基础，
                        没关系，猿咖学院为大家量身定制了一套《Java高薪就业》课程，通过学习这套教程，你会对Java的核心知识体系有清晰的理解，为接下来的学习打下坚实的基础。</p>
                    <p style="text-align: center"><a href="#" class="btn btn-primary" role="button">Button</a>
                    </p>
                </div>
            </div>
        </div>
    </div>

    <div class="row" style="border-bottom: 1px solid black">
        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Home</a>
            </li>
            <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Profile</a>
            </li>
            <li role="presentation"><a href="#messages" aria-controls="messages" role="tab"
                                       data-toggle="tab">Messages</a></li>
            <li role="presentation"><a href="#settings" aria-controls="settings" role="tab"
                                       data-toggle="tab">Settings</a></li>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="home">
                <div class="row">
                    <div class="col-md-8 col-xs-12" style="text-align: center;font-size: 25px">
                        <h2>HOME</h2>
                        <p>不管你是Java小白，还是Java零基础，
                            没关系，猿咖学院为大家量身定制了一套《Java高薪就业》课程，通过学习这套教程，你会对Java的核心知识体系有清晰的理解，为接下来的学习打下坚实的基础</p>
                    </div>
                    <div class="col-md-4 col-xs-12">
                        <img src="bootstrap-images/safari-logo.jpg" style="text-align: center">
                    </div>
                </div>
            </div>

            <div role="tabpanel" class="tab-pane" id="profile">
                <div class="row">
                    <div class="col-md-8 col-xs-12" style="text-align: center;font-size: 25px">
                        <h2>PROFILE</h2>
                        <p>不管你是Java小白，还是Java零基础，
                            没关系，猿咖学院为大家量身定制了一套《Java高薪就业》课程，通过学习这套教程，你会对Java的核心知识体系有清晰的理解，为接下来的学习打下坚实的基础</p>
                    </div>
                    <div class="col-md-4 col-xs-12">
                        <img src="bootstrap-images/opera-logo.jpg" style="text-align: center">
                    </div>
                </div>
            </div>
            <div role="tabpanel" class="tab-pane" id="messages">
                <div class="row">
                    <div class="col-md-8 col-xs-12" style="text-align: center;font-size: 25px">
                        <h2>MESSAGES</h2>
                        <p>不管你是Java小白，还是Java零基础，
                            没关系，猿咖学院为大家量身定制了一套《Java高薪就业》课程，通过学习这套教程，你会对Java的核心知识体系有清晰的理解，为接下来的学习打下坚实的基础</p>
                    </div>
                    <div class="col-md-4 col-xs-12">
                        <img src="bootstrap-images/ie-logo.jpg" style="text-align: center">
                    </div>
                </div>
            </div>
            <div role="tabpanel" class="tab-pane" id="settings">
                <div class="row">
                    <div class="col-md-8 col-xs-12" style="text-align: center;font-size: 25px">
                        <h2>SETTING</h2>
                        <p>不管你是Java小白，还是Java零基础，
                            没关系，猿咖学院为大家量身定制了一套《Java高薪就业》课程，通过学习这套教程，你会对Java的核心知识体系有清晰的理解，为接下来的学习打下坚实的基础</p>
                    </div>
                    <div class="col-md-4 col-xs-12">
                        <img src="bootstrap-images/chrome-logo.jpg" style="text-align: center">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row" style="height: 25px;border-bottom: 1px solid black">
        <div id="showYueQiang">@广州粤嵌科技</div>
        <div id="backToTop"><a href="#top" class="back-to-top"> 回到顶部Back to top </a></div>
    </div>


</div>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">广州粤嵌通信科技股份有限公司</h4>
            </div>
            <div class="modal-body">
                粤嵌创立于2005年，是全球性规模经营的IT技术产品研发及教育服务机构，
                目前粤嵌已拥有IT技术培训、教学仪器、数字医疗系统、动漫游戏机产品四大品牌产业。
                公司已于 2016 年登陆新三板（证券代码：839909） 正式挂牌上市。
                [1] 公司经过多年的发展，秉承“行业引领，齐商共赢，开拓创新，服务诚信”的核心经营理念，
                为业界提供全面的IT技术服务和产品，在发展过程中，粤嵌形成了在IT技术自主创新方面的优势和能力，
                已成为在国内外IT技术领域的知名企业。
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary">保持更改</button>
            </div>
        </div>
    </div>
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
