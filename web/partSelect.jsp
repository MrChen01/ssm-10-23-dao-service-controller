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
<h2>Basic DataGrid</h2>
<p>The DataGrid is created from markup, no JavaScript code needed.</p>
<div style="margin:20px 0;"></div>

<table class="easyui-datagrid" title="Basic DataGrid" style="width:700px;height:250px"
       data-options="singleSelect:true,collapsible:true,url:'datagrid_data1.json',method:'get'">
    <thead>
    <tr>
        <th data-options="field:'itemid',width:80">部门ID</th>
        <th data-options="field:'productid',width:100">部门名称</th>
        <th data-options="field:'listprice',width:80,align:'right'">备注</th>
        <%--<th data-options="field:'unitcost',width:80,align:'right'">Unit Cost</th>--%>
        <%--<th data-options="field:'attr1',width:250">Attribute</th>--%>
        <%--<th data-options="field:'status',width:60,align:'center'">Status</th>--%>
    </tr>
    </thead>
</table>
</body>
</html>
