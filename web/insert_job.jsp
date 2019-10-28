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
    <script type="text/javascript" src="easyui/jquery.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<body>
<form method="get" action="/insertNotice">
    <table cellpadding="7">
        <tr>
            <td>公告名称:</td>
            <td><input value="AAAA" id="name" type="text" name="name" width="300px" height="20px"></td>
        </tr>

        <tr>
            <td>公告主题:</td>
            <td><input id="title" value="ABBBB" type="text" name="title" width="300px" height="20px"></td>
        </tr>
    </table>
    <textarea id="content" name="content" style="width: 100%;height: 400px;"></textarea>
    <input type="text" value="remark" name="remark" id="remark" placeholder="remark 备注使用">
    <%--<button id="submit" value="submint"></button>--%>
    <input id="submit" type="submit" value="submit">
</form>
<script type="text/javascript">
    var ue = UE.getEditor("content");

    setTimeout(function () {
        editor.execCommand("drafts");
    }, 2000);

//    $(function () {
//        $("#submit").click(function () {
//            console.log(ue);
//            var name = $("#name").val();
//            var title = $("#title").val();
//            var content = $("#content").val();
//            var remark = $("#remark").val();
//            var json = {
//                "name": name,
//                "title": title,
//                "content": content,
//                "remark": remark
//            };
//
//            alert(JSON.stringify(json));
//
//            $.get("/insertNotice", json, function (data) {
//                //                if (data == "1") {
//                //                }
//                console.log(data);
//                //                alert(data);
////                    window.location.reload();
//            });
//        });
//    })
</script>
</body>
</html>
