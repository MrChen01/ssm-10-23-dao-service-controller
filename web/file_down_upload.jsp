<%--
  Created by IntelliJ IDEA.
  User: mi
  Date: 2019/10/29
  Time: 21:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="easyui/jquery.min.js"></script>
    <script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
    <style type="text/css">
        #form_id {
            width: 400px;
            margin: 50px;
        }
    </style>
</head>
<body>
<form action="/upLoadFile" method="post" enctype="multipart/form-data" multiple="multiple" id="form_id"
      onsubmit="return checkedUsername()">

    <div class="form-group">
        <label for="name">上传人名字:</label>
        <input name="name" type="text" class="form-control" id="name" placeholder="上传人名字" value="陈卓信">
    </div>
    <button type="button" class="btn btn-info" id="add">添加</button>
    <input type="submit" class="btn btn-default" value="submit">
    <hr>

    <div class="form-group">
        <label>文件:</label>
        <input name="uploadfile" type="file">
        <button type="button" class="btn btn-info deleteForm">删除</button>
    </div>
    <hr>

    <div class="form-group">
        <label>文件:</label>
        <input name="uploadfile" type="file">
        <button type="button" class="btn btn-info deleteForm">删除</button>
    </div>
    <hr>
    <div id="divId"></div>

</form>
</body>
<%--<script src="bootstrap/dist/js/bootstrap.min.js"></script>--%>
<script type="text/javascript">

    function deleteFromGroup(who) {
        alert(who);
        var $parentNode = $(who).parent();
        console.log($parentNode);
        $parentNode.remove();
    }

    function checkedUsername() {
        var name = $("#name").val();
//        alert(name);
        if (name == "") {
            alert("上传人不能为空");
            return false;
        }

        return true;
    }

    $(function () {

        $(".deleteForm").click(function () {
            alert(this);
            var $parentNode = $(this).parent();
            console.log($parentNode);
            $parentNode.remove();
        });

        $("#add").click(function () {
            $("#divId").append("<div class='form-group'><label>文件:</label><input type='file' name='uploadfile'><button type='button' class='btn btn-info deleteForm' onclick='deleteFromGroup(this)'>删除</button></div><hr>");
        });


    });

    $(function () {
        var info = "${uploadInfoReturn}";
//        alert("--->" + info);
        if (info == "1") {
            alert("上传成功");
        }

        if (info == "0") {
            alert("上传失败");
        }
    })
</script>
</html>
