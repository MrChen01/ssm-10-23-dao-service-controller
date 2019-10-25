<%--
  Created by IntelliJ IDEA.
  User: mi
  Date: 2019/9/22
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<body>
<form action="/servletTest" method="get">
    <table cellpadding="7">
        <tr>
            <td>公告名称:</td>
            <td><input type="text" name="noticeName" width="300px" height="20px"></td>
        </tr>

        <tr>
            <td>公告主题:</td>
            <td><input type="text" name="title" width="300px" height="20px"></td>
        </tr>

    </table>
    <textarea id="container" name="container" style="width: 100%;height: 400px;"></textarea>
    <input type="submit" value="submit">
</form>
<script type="text/javascript">
    var ue=UE.getEditor("container");

    setTimeout(function () {
        editor.execCommand("drafts");
    },2000);
</script>
</body>
</html>
