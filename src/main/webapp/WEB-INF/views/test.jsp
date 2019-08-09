<%--
  Created by IntelliJ IDEA.
  User: jakub
  Date: 08.08.19
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <table>
        <tr>
            <td>Id:</td>
            <td>${user.id}</td>
        </tr>
        <tr>
            <td>Nazwa użytkownika:</td>
            <td>${user.username}</td>
        </tr>
        <tr>
            <td>Email:</td>
            <td>${user.email}</td>
        </tr>
        <tr>
            <td>Address:</td>
            <td>${user.address}</td>
        </tr>
        <tr>
            <td>Ulubione promocje:</td>
            <td>${user.favouritesPromotions}</td>
        </tr>
    </table>

</body>
</html>
