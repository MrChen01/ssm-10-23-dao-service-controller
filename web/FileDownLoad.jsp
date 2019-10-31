<%--
  Created by IntelliJ IDEA.
  User: mi
  Date: 2019/10/30
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>FileDownLoad</title>
    <link rel="stylesheet" type="text/css"
          href="easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
    <script type="text/javascript" src="easyui/jquery.min.js"></script>
    <script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
</head>
<body>
<h1>文件下载列表</h1>
<table style="border-spacing: 10px 8px;width: 70%;">
    <c:forEach items="${fileBeanList}" var="li">
        <tr>
            <form action="/download" method="post">
                <td>
                    <input type="text" name="filename" value="${li.fileName}" style="width: 100%;">
                </td>
                <td>
                    <input type="submit" value="下载文件">
                </td>
            </form>
        </tr>
    </c:forEach>
</table>
</body>
</html>
