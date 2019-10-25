<%--
  Created by IntelliJ IDEA.
  User: mi
  Date: 2019/9/22
  Time: 11:10
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
<h2>Basic TextBox</h2>
<p>The textbox allows a user to enter information.</p>
<div style="margin:20px 0;"></div>
<div class="easyui-panel" title="Register" style="width:100%;max-width:400px;padding:30px 60px;">
    <div style="margin-bottom:20px"><input class="easyui-textbox" label="部门名称:" labelPosition="top"
                                           data-options="prompt:'Enter a part name...'" style="width:100%;">
    </div>
    <div style="margin-bottom:20px">
        <input class="easyui-textbox" label="备注:" labelPosition="top" style="width:100%;">
    </div>

    <div>
        <a href="#" class="easyui-linkbutton" iconCls="icon-ok" style="width:100%;height:32px">Register</a>
    </div>
</div>

</body>
</html>
