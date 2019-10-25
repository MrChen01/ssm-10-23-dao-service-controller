<%--
  Created by IntelliJ IDEA.
  User: mi
  Date: 2019/9/22
  Time: 10:39
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
</head>
<body>
<%--<h2>Basic Form</h2>--%>
<%--<p>Fill the form and submit it.</p>--%>
<div style="margin:20px 0;"></div>
<div class="easyui-panel" title="New Topic" style="width:100%;max-width:400px;padding:30px 60px;">
    <form id="ff" method="post">
        <div style="margin-bottom:20px">
            名字:   <input class="easyui-textbox" name="name" style="width:100%" data-options="label:'Name:',required:true" placeholder="修改人名字">
        </div>
        <div style="margin-bottom:20px">
            邮箱:  <input class="easyui-textbox" name="email" style="width:100%"
                   data-options="label:'Email:',required:true,validType:'email'" placeholder="修改人邮箱">
        </div>
        <div style="margin-bottom:20px">
            <input class="easyui-textbox" name="subject" style="width:100%"
                   data-options="label:'Subject:',required:true">
        </div>
        <div style="margin-bottom:20px">
            <input class="easyui-textbox" name="message" style="width:100%;height:60px"
                   data-options="label:'Message:',multiline:true">
        </div>
        <div style="margin-bottom:20px">
            <select class="easyui-combobox" name="language" label="Language" style="width:100%">
                <option value="ar">Arabic</option>
                <option value="bg">Bulgarian</option>
                <option value="ca">Catalan</option>
                <option value="zh-cht">Chinese Traditional</option>
                <option value="cs">Czech</option>
                <option value="da">Danish</option>
                <option value="nl">Dutch</option>
                <option value="en" selected="selected">English</option>
                <option value="et">Estonian</option>
                <option value="fi">Finnish</option>
                <option value="fr">French</option>
                <option value="de">German</option>
                <option value="el">Greek</option>
                <option value="ht">Haitian Creole</option>
                <option value="he">Hebrew</option>
                <option value="hi">Hindi</option>
                <option value="mww">Hmong Daw</option>
                <option value="hu">Hungarian</option>
                <option value="id">Indonesian</option>
                <option value="it">Italian</option>
                <option value="ja">Japanese</option>
                <option value="ko">Korean</option>
                <option value="lv">Latvian</option>
                <option value="lt">Lithuanian</option>
                <option value="no">Norwegian</option>
                <option value="fa">Persian</option>
                <option value="pl">Polish</option>
                <option value="pt">Portuguese</option>
                <option value="ro">Romanian</option>
                <option value="ru">Russian</option>
                <option value="sk">Slovak</option>
                <option value="sl">Slovenian</option>
                <option value="es">Spanish</option>
                <option value="sv">Swedish</option>
                <option value="th">Thai</option>
                <option value="tr">Turkish</option>
                <option value="uk">Ukrainian</option>
                <option value="vi">Vietnamese</option>
            </select>
        </div>
    </form>
    <div style="text-align:center;padding:5px 0">
        <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()" style="width:80px">修改</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()" style="width:80px">Clear重置</a>
    </div>
</div>
<script>
    function submitForm() {
        $('#ff').form('submit');
    }

    function clearForm() {
        $('#ff').form('clear');
    }
</script>
</body>
</html>
