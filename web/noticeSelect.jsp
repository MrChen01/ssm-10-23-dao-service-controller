<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>公告查询</title>
    <link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
    <script type="text/javascript" src="easyui/jquery.min.js"></script>
    <script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
</head>
<body>

<table id="dg" style="width: 100%; height: auto"></table>

<div id="dlg" class="easyui-dialog" title="修改公告信息"
     style="width: 400px; height: auto; padding: 10px"
     data-options="
				closed:true,
				iconCls: 'icon-edit',
				toolbar: '#dlg-toolbar',
				buttons: '#dlg-buttons'">
    <%--修改公告信息--%>
    <div>
        <form id="ff" class="easyui-form" method="post">
            <table cellpadding="10">
                <tr>
                    <td>公告号:</td>
                    <td><input class="easyui-textbox" disabled="disabled"
                               type="text" name="id" id="id"
                               data-options="required:true"></td>
                </tr>
                <tr>
                    <td>公告名称:</td>
                    <td><input class="easyui-textbox" type="text" name="name"
                               id="name" data-options="required:true"></td>
                </tr>

                <tr>
                    <td>公告题目:</td>
                    <td><input class="easyui-textbox" type="text" name="title"
                               id="title" data-options="required:true"></td>
                </tr>

                <tr>
                    <td>公告内容:</td>
                    <td><input class="easyui-textbox" name="content"
                               id="content" data-options="required:true"/></td>
                </tr>

                <tr>
                    <td>公告备注:</td>
                    <td><input class="easyui-textbox" type="text"
                               name="remark" id="remark"></td>
                </tr>
            </table>
        </form>
    </div>
</div>

<div id="dlg-buttons">
    <a href="javascript:void(0)" class="easyui-linkbutton"
       onclick="save()">保存</a> <a href="javascript:void(0)"
                                  class="easyui-linkbutton"
                                  onclick="javascript:$('#dlg').dialog('close')">取消</a>
</div>

</body>
<script type="text/javascript">
    function save() {
        //获得控件中的数据
        var id = $("#id").val();
        var name = $("#name").val();
        var title = $("#title").val();
        var content = $("#content").val();
        var remark = $("#remark").val();
        //将得到的学生信息构建成json数据
        var json = {
            "id": id,
            "name": name,
            "title": title,
            "content": content,
            "remark": remark
        };
        alert(JSON.stringify(json));
        //完成ajax操作
        $.post("/updateNoticeById", json, function (data) {
            var info = "对不起，修改失败！";
            var pic = "error"
            if (data == "1") {
                info = "恭喜，修改成功！！";
                pic = "info"
            }
            $.messager.alert('结果', info, pic, function () {
                window.location.reload();
            });
        });
    }

    $(function () {

        /**
         * @author 光芒
         *
         * @requires jQuery
         *
         * 格式化日期时间
         */
        function DateTimeFormatter(value) {
            if (value == undefined) {
                return "";
            }
            /*json格式时间转js时间格式*/
            value = value.substr(1, value.length - 2);
            var obj = eval('(' + "{Date: new " + value + "}" + ')');
            var dateValue = obj["Date"];
            if (dateValue.getFullYear() < 1900) {
                return "";
            }
            return dateValue.format("yyyy-MM-dd hh:mm:ss");
        }

        $('#dg').datagrid({
            url: '/selectAllNotice',
            title: '公告列表',
            border: false,
            rownumbers: true,
            toolbar: '#tb',
            pagination: true,
            pageSize: "10",
            pageList: [5, 10, 15, 20],
            singleSelect: true,
            columns: [[{
                field: 'id',
                title: '公告号',
                width: 80
            }, {
                field: 'name',
                title: '公告名称',
                width: 100
            }, {
                field: 'title',
                title: '公告题目',
                width: 100
            }, {
                field: 'content',
                title: '公告内容',
                width: 220
            }, {
                field: 'remark',
                title: '备注',
                width: 100
            }]]
        });

        var pager = $('#dg').datagrid().datagrid('getPager');

        pager.pagination({
            buttons: [
                {
                    iconCls: 'icon-no',
                    text: '删除',
                    handler: function () {
                        var row = $('#dg').datagrid('getSelected');
                        if (row != null) {
                            $.messager.confirm('确认是否要删除', '确定要删除('
                                + row.name + ')吗?', function (r) {
                                if (r) {
                                    //ajax：完成后天交互
                                    $.get("/deleteNoticeById?id="
                                        + row.id, null, function (data) {
                                        $.messager.alert('结果', data,
                                            'info', function () {
                                                window.location.reload();
                                            });
                                    });
                                }
                            });
                        }
                    }
                },
                {
                    iconCls: 'icon-edit',
                    text: '修改',
                    handler: function () {
                        var row = $('#dg').datagrid('getSelected');
                        if (row != null) {
                            $('#dlg').dialog('open');
                            var row = $('#dg').datagrid('getSelected');
                            if (row != null) {
                                //读取方式,根据row的字段row.xxx
                                $("#id")
                                    .textbox('setValue', row.id);
                                $("#name").textbox('setValue',
                                    row.name);
                                $("#title").textbox('setValue',
                                    row.title);
                                $("#content").textbox('setValue',
                                    row.content);
                                $("#remark").textbox('setValue',
                                    row.remark);
                                $('#dlg').dialog('open');
                            }

                        }
                    }
                }]
        });
    })
</script>

</html>