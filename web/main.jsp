<%--
  Created by IntelliJ IDEA.
  User: mi
  Date: 2019/9/21
  Time: 19:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
    <%--<link rel="stylesheet" type="text/css" href="../demo.css">--%>
    <script type="text/javascript" src="easyui/jquery.min.js"></script>
    <script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>


    <style type="text/css">


        * {
            margin: 0px;
            padding: 0px;
        }

        /*div {*/
        /*border: 1px solid black;*/
        /*}*/

        #south-concent {
            text-align: center;
            font-size: 32px;
            line-height: 70px;
            color: red;
        }

        .icon-add-test {
            display: block;
            width: 88px;
        }

        #north-concent {
            /*background: url("north-images/topbg.gif");*/
            background-repeat: repeat-x;
            overflow: hidden;
        }

        #north-concent:after {
            display: block;
            content: "";
            clear: both;
        }

        #north-concent-left {
            height: 100%;
            width: 20%;
            /*background: url("north-images/top_logo.png") no-repeat;*/
            background-size: 100% 100%;
            border: 1px solid black;
            float: left;
        }

        #north-content-rigth {
            height: 100%;
            width: 1220px;
            /*background: url("north-images/StatBarBg.png") bottom right no-repeat;*/
            border: 1px solid deeppink;
            /*background-size: 100% 50%;*/
            float: left;
        }

        #user-manager > a {
            width: 100px;
            margin-top: 5px;
        }

        #part a {
            width: 100px;
            margin-top: 5px;
        }

        #title > a {
            width: 100px;
            margin-top: 5px;
        }

        #employee > a {
            width: 100px;
            margin-top: 5px;

        }

    </style>

</head>
<body>

<div id="cc" class="easyui-layout" style="width:100%;height:100%;">


    <div id="north-concent" data-options="region:'north'" style="height:80px;border-bottom: 10px pink solid">
        <div class="panel layout-panel layout-panel-north panel-htop" style="left: 0px; top: 0px; width: 100%;">
            <div title="" class="panel-body panel-body-noheader panel-body-noborder layout-body"
                 style='width: 100%; height: 80px; overflow: hidden; background-image: url("images/topbg.gif");'
                 data-options="region:'north',border:false">
                <div style="position: relative;">
                    <img alt="找不到图片" src="images/top_logo.png">
                    <table style="top: 15px; right: 35px; position: absolute;">
                        <tbody>
                        <tr>
                            <td style="width: 25px;"><img src="images/top_home.gif">
                            </td>
                            <td style="width: 120px;"><a style="color: rgb(255, 255, 255); text-decoration: none;"
                                                         href="">首页</a>
                            </td>
                            <td style="width: 25px;"><img src="images/top_exit.gif"></td>
                            <td style="width: 120px;">
                                <a style="color: rgb(255, 255, 255); text-decoration: none;" href=" ">退出登录</a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <div style='left: 400px; top: 47px; width: 100%; height: 33px; position: absolute; background-image: url("images/StatBarBg.png"); background-size: 100% 100%;'>
                        <div style="width: 100%;">
                            <table style="margin-top: 7px; margin-left: 50px;">
                                <tbody>
                                <tr>
                                    <td style="width: 25px;"><img src="images/StatBar_admin.gif"></td>
                                    <td style="width: 180px;">当前用户:<span>${user.username}</span></td>
                                    <td style="width: 540px;"></td>
                                    <td style="width: 25px;"><img src="images/StatBar_time.gif"></td>
                                    <td style="width: 300px;"><p id="ptime">2019年09月22号&nbsp;&nbsp;&nbsp;&nbsp;09:41:23&nbsp;&nbsp;&nbsp;&nbsp;星期日</p>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%--<div id="north-concent-left"></div>--%>

        <%--<div id="north-content-rigth">--%>

        <%--</div>--%>
    </div>

    <div data-options="region:'south',title:'South Title',split:true" style="height:100px;">
        <%--<center>--%>
        <p id="south-concent">@五邑大学官网2016-2019</p>
        <%--</center>--%>
    </div>
    <div data-options="region:'east',iconCls:'icon-reload',title:'East',split:true" style="width:200px;"></div>


    <div data-options="region:'west',title:'West',split:true" style="width:250px;">


        <div class="easyui-accordion" style="width:243px;height:100%;">

            <div title="用户管理" data-options="iconCls:'icon-ok'" style="overflow:auto;padding:10px;">
                <h3 style="color:#0099FF;">jQuery手风琴</h3>
                <p id="user-manager">
                    <a href="#" class="easyui-linkbutton icon-add-test"
                       data-options="iconCls:'icon-search'">用户查询</a>
                    <a href="#" class="easyui-linkbutton icon-add-test"
                       data-options="iconCls:'icon-add'">添加用户</a>
                    <a href="#" class="easyui-linkbutton icon-add-test"
                       data-options="iconCls:'icon-more'">修改用户</a>

                    <%--<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove'">Remove</a>--%>
                    <%--<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save'">Save</a>--%>
                    <%--<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cut',disabled:true">Cut</a>--%>
                    <%--<a href="#" class="easyui-linkbutton">文本按钮</a>--%>
                </p>
                <p>Accordion是jQuery的easyui框架的一部分。它使您可以更容易地在web页面上定义手风琴组件。</p>
            </div>

            <div title="部门管理" data-options="iconCls:'icon-undo'" style="overflow:auto;padding:10px;">
                <h3 style="color:#0099FF;">jQuery手风琴</h3>
                <p id="part">
                    <a id="addTab" href="#" class="easyui-linkbutton icon-add-test" data-options="iconCls:'icon-add'">添加部门</a>
                    <a id="selectTab" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove'">查询部门</a>
                    <%--<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save'">Save</a>--%>
                    <%--<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cut',disabled:true">Cut</a>--%>
                    <%--<a href="#" class="easyui-linkbutton">文本按钮</a>--%>
                </p>
                <p>Accordion是jQuery的easyui框架的一部分。它使您可以更容易地在web页面上定义手风琴组件。</p>
            </div>

            <div title="公告管理" data-options="iconCls:'icon-cut'" style="overflow:auto;padding:10px;">
                <h3 style="color:#0099FF;">jQuery手风琴</h3>
                <p id="title"><a href="#" class="easyui-linkbutton icon-add-test"
                                 data-options="iconCls:'icon-add'">添加公告</a>
                    <%--<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove'">Remove</a>--%>
                    <%--<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save'">Save</a>--%>
                    <%--<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cut',disabled:true">Cut</a>--%>
                    <%--<a href="#" class="easyui-linkbutton">文本按钮</a>--%>
                </p>
                <p>Accordion是jQuery的easyui框架的一部分。它使您可以更容易地在web页面上定义手风琴组件。</p>
            </div>


            <div title="职位管理" data-options="iconCls:'icon-reload'" style="padding:10px;">
                <h3 style="color:#0099FF;">jQuery手风琴</h3>
                <p id="employee">
                    <a href="#" class="easyui-linkbutton icon-add-test" data-options="iconCls:'icon-add'">职位管理</a>
                    <%--<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove'">Remove</a>--%>
                    <%--<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save'">Save</a>--%>
                    <%--<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cut',disabled:true">Cut</a>--%>
                    <%--<a href="#" class="easyui-linkbutton">文本按钮</a>--%>
                </p>
                <p>Accordion是jQuery的easyui框架的一部分。它使您可以更容易地在web页面上定义手风琴组件。</p>
            </div>


            <div title="Help" data-options="iconCls:'icon-help'" style="padding:10px;">
                <p>手风琴允许您提供多个面板，并一次显示一个或多个面板。
                    每个面板都内置了对展开和折叠的支持。单击面板标题以展开或折叠该面板主体。
                    面板内容可以通过指定“href”属性通过ajax加载。用户可以定义要选择的面板。
                    如果没有指定，则默认采用第一个面板。</p>
            </div>
            <div title="TreeMenu" data-options="iconCls:'icon-search'" style="padding:10px 0;">
                <ul class="easyui-tree">
                    <li>
                        <span>Foods</span>
                        <ul>
                            <li>
                                <span>Fruits</span>
                                <ul>
                                    <li>apple</li>
                                    <li>orange</li>
                                </ul>
                            </li>


                            <li>
                                <span>Vegetables</span>
                                <ul>
                                    <li>tomato</li>
                                    <li>carrot</li>
                                    <li>cabbage</li>
                                    <li>potato</li>
                                    <li>lettuce</li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>


    </div>

    <div data-options="region:'center',title:'center title'" style="padding:5px;background:#eee;">
        <div id="tt" class="easyui-tabs " style="width:100%;height:100%">
            <div title="About" style="padding:10px" data-options="closable:true">
                <p style="font-size:14px">jQuery EasyUI框架帮助您轻松构建web页面。</p>
                <ul>
                    <li>easyui是一个基于jQuery的用户界面插件集合。</li>
                    <li>easyui提供了构建调制解调器、交互式javascript应用程序的基本功能。</li>
                    <li>使用easyui，您不需要编写很多javascript代码，通常通过编写一些HTML标记来定义用户界面。</li>
                    <li>完整的HTML5网页框架。</li>
                    <li>easyui在开发您的产品时可以节省您的时间和规模。</li>
                    <li>easyui很简单但是很强大。</li>
                </ul>
            </div>
            <div title="My Documents" style="padding:10px" data-options="closable:true">
                <ul class="easyui-tree" data-options="url:'tree_data1.json',method:'get',animate:true"></ul>
            </div>
            <div title="Help" data-options="iconCls:'icon-help',closable:true" style="padding:10px">
                This is the help content.
            </div>
        </div>
    </div>
</div>

<%--<div data-options="region:'north',title:'North Title',split:true" style="height:100px;">north</div>--%>
<%--<div data-options="region:'south',title:'South Title',split:true" style="height:100px;">south</div>--%>
<%--<div data-options="region:'east',iconCls:'icon-reload',title:'East',split:true" style="width:100px;">east</div>--%>
<%--<div data-options="region:'west',title:'West',split:true" style="width:100px;">west</div>--%>
<%--<div data-options="region:'center',title:'center title'" style="padding:5px;background:#eee;">center</div>--%>

</body>

<%--<script type="text/javascript" src="js/jquery-1.8.3.js"></script>--%>

<script type="text/javascript">


    $(function () {

        var aUserList = document.querySelectorAll("#user-manager>a");
        var partLisA = document.querySelectorAll("#part a");

        $(partLisA[0]).click(function () {
            addTab("#tt", "部门添加", "icon-more", "partAdd.jsp");
        });

        $(partLisA[1]).click(function () {
            addTab("#tt", "部门查询", "icon-more", "partSelect.jsp");
        });


        $(aUserList[0]).click(function () {
            addTab("#tt", "用户查询", "icon-more", "selectUser.jsp");
        });

        $(aUserList[1]).click(function () {
            addTab("#tt", "用户添加", "icon-mini-add", "addUserPage.jsp");
        });

        $(aUserList[2]).click(function () {
            addTab("#tt", "修改用户", "icon-mini-edit", "changeUserPage.jsp");
        });

        $("#title>a").click(function () {
            addTab("#tt", "添加公告", "icon-mini-edit", "addNotice.jsp");
        });

//        $("#addTab").click(function () {
//            var res = $("#tt").tabs("exists", "NewTab");
//            if (res) {
////                console.log(res);
//                $("#tt").tabs("select", "NewTab");
//            } else {
//                $('#tt').tabs('add', {
//                    title: 'NewTab',
//                    content: "<iframe src='http://www.baidu.com' style='width: 100%;height: 100%;'></iframe>",
////                    content: "new Tab",
//                    closable: true,
//                    tools: [{
//                        iconCls: 'icon-mini-refresh',
//                        handler: function () {
//                            alert('refresh');
//                        }
//                    }]
//                });
//            }
        // add a new tab panel
//        });

        $("#selectTab").click(function () {
            $("#tt").tabs("select", "NewTab");
        });


        /*时钟*/
        //js完成，创建一个定时器（可重复的）
        var mytime = setInterval(function () {
            getTime();
        }, 1000);//1000毫秒==1秒
        function getTime() {
            var d = new Date();
            /*得到月，日，时，分，秒，要处理少10补0  */
            var M = (d.getMonth() + 1) < 10 ? ('0' + (d.getMonth() + 1)) : (d
                .getMonth() + 1);
            var D = d.getDate() < 10 ? ('0' + d.getDate()) : d.getDate();
            var H = d.getHours() < 10 ? ('0' + d.getHours()) : d.getHours();
            var m = d.getMinutes() < 10 ? ('0' + d.getMinutes()) : d.getMinutes();
            var s = d.getSeconds() < 10 ? ('0' + d.getSeconds()) : d.getSeconds();
            var t = d.getFullYear() + "年" + M + "月" + D
                + "号&nbsp;&nbsp;&nbsp;&nbsp;" + H + ":" + m + ":" + s
                + "&nbsp;&nbsp;&nbsp;&nbsp;星期" + "日一二三四五六".charAt(d.getDay());
//            ;
//            将控件的内容修改为处理好的字符串
            $("#ptime").html(t);
        }

    });


    //封装一个添加tab的方法（id--—>要添加tab的id, info-->要添加的title,icon:要添加的图标）
    function addTab(id, info, icon, url) {
        //先判断是否存在,返回一个boolean值
        var res = $(id).tabs("exists", info);

        //如果选项卡存在，则直接选中：select选中
        if (res) {
            //让table选中
            $(id).tabs("select", info);

        } else {//如果不存在则添加
            //调用添加tab的函数
            var content = '<iframe scrolling="auto" frameborder="0"  src="'
                + url + '" style="width:100%;height:100%;"></iframe>';
            $(id).tabs("add", {
                "iconCls": icon,
                "title": info,
                content: content,
                "closable": "true"
            });
        }
    }


</script>
</html>
