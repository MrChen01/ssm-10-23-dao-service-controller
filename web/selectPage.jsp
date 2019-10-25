<%--
  Created by IntelliJ IDEA.
  User: mi
  Date: 2019/9/22
  Time: 10:10
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
学号: <input class="easyui-textbox" data-options="iconCls:'icon-search'" style="width:300px">
姓名: <input class="easyui-textbox" data-options="iconCls:'icon-search'" style="width:300px">
班级: <select id="cc" class="easyui-combobox" name="dept" style="width:200px;">
    <option value="aa">160802班</option>
    <option>160801班</option>
    <option>160802班</option>
    <option>160803班</option>
    <option>160804班</option>
</select>
<a id="btn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">查找</a>


<%--<table class="easyui-datagrid" title="Basic DataGrid" style="width:700px;height:250px"--%>
<%--data-options="singleSelect:true,collapsible:true,url:'datagrid_data1.json',method:'get'">--%>
<%--<thead>--%>
<%--<tr>--%>
<%--<th data-options="field:'itemid',width:80">ID学号</th>--%>
<%--<th data-options="field:'productid',width:100">姓名</th>--%>
<%--<th data-options="field:'listprice',width:80,align:'right'">密码</th>--%>
<%--<th data-options="field:'unitcost',width:80,align:'right'">班级</th>--%>
<%--&lt;%&ndash;<th data-options="field:'attr1',width:250">Attribute</th>&ndash;%&gt;--%>
<%--&lt;%&ndash;<th data-options="field:'status',width:60,align:'center'">Status</th>&ndash;%&gt;--%>
<%--</tr>--%>
<%--</thead>--%>
<%--</table>--%>


<table id="dg" class="easyui-datagrid" title="CheckBox Selection on DataGrid" style="width:700px;height:250px"
       data-options="rownumbers:true,singleSelect:true,url:'datagrid_data1.json',method:'get'">
    <thead>
    <tr>
        <th data-options="field:'ck',checkbox:true"></th>
        <th data-options="field:'itemid',width:100">学号</th>
        <th data-options="field:'productid',width:120">班级</th>
        <th data-options="field:'listprice',width:100,align:'right'">密码</th>
        <%--<th data-options="field:'unitcost',width:80,align:'right'">Unit Cost</th>--%>
        <%--<th data-options="field:'attr1',width:220">Attribute</th>--%>
        <%--<th data-options="field:'status',width:60,align:'center'">Status</th>--%>
    </tr>

    </thead>
    <tbody>
    <tr>
        <td data-options="field:'ck',checkbox:true"></td>
        <td data-options="field:'itemid',width:80">3116002371</td>
        <td data-options="field:'productid',width:100">160802班级</td>
        <td data-options="field:'listprice',width:80,align:'right'">3116002371</td>
    </tr>
    </tbody>
</table>
<div style="margin:10px 0;">
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add'">删除用户</a>
    <a id="changeUserMessage" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove'">修改用户</a>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save'">保存用户</a>
    <%--<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cut',disabled:true">Cut</a>--%>
    <%--<span>Selection Mode: </span>--%>
    <%--<select onchange="$('#dg').datagrid({singleSelect:(this.value==0)})">--%>
    <%--<option value="0">Single Row</option>--%>
    <%--<option value="1">Multiple Rows</option>--%>
    <%--</select>--%>
    <%--<br/>--%>
    <%--SelectOnCheck: <input type="checkbox" checked onchange="$('#dg').datagrid({selectOnCheck:$(this).is(':checked')})"><br/>--%>
    <%--CheckOnSelect: <input type="checkbox" checked onchange="$('#dg').datagrid({checkOnSelect:$(this).is(':checked')})">--%>
</div>

<div id="dlg2" class="easyui-dialog" title="修改用户" data-options="iconCls:'icon-save'"
     style="width:600px;height:600px;padding:10px">
    <div class="easyui-panel" title="Register" style="width:100%;max-width:400px;padding:30px 60px;">

        <div style="margin-bottom:20px">
            <input class="easyui-textbox" label="ID:" labelPosition="top" style="width:100%;">
        </div>
        <div style="margin-bottom:20px">
            <input class="easyui-textbox" label="部门名称:" labelPosition="top" style="width:100%;">
        </div>
        <div style="margin-bottom:20px">
            <input class="easyui-textbox" label="备注:" labelPosition="top" style="width:100%;">
        </div>

        <div>
            <a href="#" class="easyui-linkbutton" iconCls="icon-ok" style="width:100%;height:32px">Register</a>
        </div>
    </div>

</div>
</body>
<script type="text/javascript">
    $(function () {
        $('#dlg2').dialog('close');

        $("#changeUserMessage").click(function () {
            $('#dlg2').dialog('open');
        });

    });
</script>
</html>
