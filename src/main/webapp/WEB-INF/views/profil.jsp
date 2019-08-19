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
    <%@ include file="./fragments/head.jsp" %>
</head>
<body>
<%@ include file="./fragments/headerUser.jsp" %>

<table>
    <tr>
        <td>Data urodzenia:</td>
        <td>${userDetails.dateOfBirth}</td>
    </tr>
    <tr>
        <td>Email:</td>
        <td>${userDetails.email}</td>
    </tr>
    <tr>
        <td>Adres:</td>
        <td>${userDetails.address}</td>
    </tr>
</table>

<%@ include file="./fragments/jsCode.jsp" %>
</body>
</html>
