<%--
  Created by IntelliJ IDEA.
  User: jakub
  Date: 07.08.19
  Time: 17:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profil</title>
    <%@ include file="../fragments/head.jsp" %>
</head>
<body>
<%@ include file="../fragments/header.jsp" %>

<table>
    <tr>
        <td>Nazwa użytkownika:</td>
        <td>${user.username}</td>
    </tr>
    <tr>
        <td>Email:</td>
        <td>${user.email}</td>
    </tr>
    <tr>
        <td>Adres:</td>
        <td>${user.address}</td>
    </tr>
</table>

<%@ include file="../fragments/jsCode.jsp" %>
</body>
</html>
