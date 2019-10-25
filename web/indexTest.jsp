<%--
  Created by IntelliJ IDEA.
  User: mi
  Date: 2019/9/21
  Time: 8:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>基本手风琴 - jQuery EasyUI组件功能在线演示</title>
    <meta name="keywords"
          content="fly,layui,jQuery,EasyUI桌面端组件,手风琴,基本手风琴,angular,vue,react,ui,widgets,ajax,ria,web framework,web development,easy,easyui,datagrid,treegrid,tree">
    <meta name="description" content="手风琴是jQuery的easyui框架的一部分。它使您可以更容易地在web页面上定义手风琴组件">
    <link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">


    <%--<link rel="stylesheet" type="text/css" href="easyui/demo.css">--%>

    <script type="text/javascript" src="easyui/jquery.min.js"></script>
    <script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
    <style type="text/css">
        /** {*/
        /*margin: 0px;*/
        /*padding: 0px;*/
        /*}*/
    </style>
</head>
<body>
<h2>基本手风琴</h2>
<p>单击面板标题以显示其内容。</p>
<div style="margin:20px 0 10px 0;"></div>


<div class="easyui-accordion" style="width:200px;height:300px;">
    <div title="Undo" data-options="iconCls:'icon-undo'" style="overflow:auto;padding:10px;">
        <h3 style="color:#0099FF;">jQuery手风琴</h3>
        <%--<p>--%>
            <%--<a href="http://www.baidu.com" class="easyui-linkbutton" data-options="iconCls:'icon-add'">Add</a>--%>
            <%--<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove'">Remove</a>--%>
            <%--<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save'">Save</a>--%>
            <%--<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cut',disabled:true">Cut</a>--%>
            <%--<a href="#" class="easyui-linkbutton">文本按钮</a>--%>
        <%--</p>--%>
        <p>Accordion是jQuery的easyui框架的一部分。它使您可以更容易地在web页面上定义手风琴组件。</p>
    </div>

    <div title="Cut" data-options="iconCls:'icon-cut'" style="overflow:auto;padding:10px;">
        <h3 style="color:#0099FF;">jQuery手风琴</h3>
        <%--<p><a href="http://www.baidu.com" class="easyui-linkbutton" data-options="iconCls:'icon-add'">Add</a>--%>
            <%--<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove'">Remove</a>--%>
            <%--<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save'">Save</a>--%>
            <%--<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cut',disabled:true">Cut</a>--%>
            <%--<a href="#" class="easyui-linkbutton">文本按钮</a>--%>
        <%--</p>--%>
        <p>Accordion是jQuery的easyui框架的一部分。它使您可以更容易地在web页面上定义手风琴组件。</p>
    </div>
    <div title="OK" data-options="iconCls:'icon-ok'" style="overflow:auto;padding:10px;">
        <h3 style="color:#0099FF;">jQuery手风琴</h3>
        <%--<p><a href="http://www.baidu.com" class="easyui-linkbutton" data-options="iconCls:'icon-add'">Add</a>--%>
            <%--<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove'">Remove</a>--%>
            <%--<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save'">Save</a>--%>
            <%--<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cut',disabled:true">Cut</a>--%>
            <%--<a href="#" class="easyui-linkbutton">文本按钮</a>--%>
        <%--</p>--%>
        <p>Accordion是jQuery的easyui框架的一部分。它使您可以更容易地在web页面上定义手风琴组件。</p>
    </div>
    <div title="Reload" data-options="iconCls:'icon-reload'" style="padding:10px;">
        <h3 style="color:#0099FF;">jQuery手风琴</h3>
        <%--<p><a href="http://www.baidu.com" class="easyui-linkbutton" data-options="iconCls:'icon-add'">Add</a>--%>
            <%--<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove'">Remove</a>--%>
            <%--<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save'">Save</a>--%>
            <%--<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cut',disabled:true">Cut</a>--%>
            <%--<a href="#" class="easyui-linkbutton">文本按钮</a>--%>
        <%--</p>--%>
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


<h2>基本文本框</h2>
<p>文本框允许用户输入信息。</p>
<div style="margin:20px 0;"></div>
<div class="easyui-panel" title="Register" style="width:100%;max-width:400px;padding:30px 60px;">
    <div style="margin-bottom:20px">
        <input class="easyui-textbox" label="Email:" labelPosition="top"
               data-options="prompt:'Enter a email address...',validType:'email'" style="width:100%;">
    </div>
    <div style="margin-bottom:20px">
        <input class="easyui-textbox" label="First Name:" labelPosition="top" style="width:100%;">
    </div>
    <div style="margin-bottom:20px">
        <input class="easyui-textbox" label="Last Name:" labelPosition="top" style="width:100%;">
    </div>
    <div style="margin-bottom:20px">
        <input class="easyui-textbox" label="Company:" labelPosition="top" style="width:100%;">
    </div>

    <div>
        <a href="#" class="easyui-linkbutton" iconCls="icon-ok" style="width:100%;height:32px">Register</a>
    </div>
</div>


<h2>基本链接按钮</h2>
<p>按钮可以button元素创建。</p>
<div style="margin:10px 0 40px 0;"></div>
<p>基本按钮</p>
<div style="padding:5px 0;">
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add'">Add</a>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove'">Remove</a>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save'">Save</a>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cut',disabled:true">Cut</a>
    <a href="#" class="easyui-linkbutton">文本按钮</a>
</div>


<p>固定宽度的按钮</p>
<div style="padding:5px 0;">
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'" style="width:80px">Search</a>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-print'" style="width:80px">Print</a>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-reload'" style="width:80px">Reload</a>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-help'" style="width:80px">Help</a>
</div>

</body>
</html>
