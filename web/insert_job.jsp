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

    <div style="margin-bottom:20px"><input id="id" name="id" class="easyui-textbox" label="部门编号:" labelPosition="top"
                                           data-options="prompt:'Enter a part id...'" style="width:100%;">
    </div>

    <div style="margin-bottom:20px"><input id="name" name="name" class="easyui-textbox" label="岗位名称:" labelPosition="top"
                                           data-options="prompt:'Enter a part name...'" style="width:100%;">
    </div>

    <div style="margin-bottom:20px">
        <input id="remark"  name="remark" class="easyui-textbox" label="岗位备注:" labelPosition="top" style="width:100%;">
    </div>

    <div>
        <a href="javascript:void(0)" id="registerDept" class="easyui-linkbutton" iconCls="icon-ok"
           style="width:100%;height:32px">添加工作岗位</a>
    </div>
</div>

</body>
<script type="text/javascript">
    $(function () {
        $("#registerDept").click(function () {
            var id = $("#id").val();
            var name = $("#name").val();
            var remark = $("#remark").val();

            var json = {
                "id":id,
                "name": name,
                "remark": remark

            };

            alert(JSON.stringify(json));
            $.get("/insertJob", json, function (data) {
                var info = "添加失败";
                if (data == "0") {
                    console.log(data);
                    $.messager.alert('结果', "添加失败",
                        'info', function () {
                            window.location.reload();
                        });
                }
            });
        });
    });
</script>
</html>
