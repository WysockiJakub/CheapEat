<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CheapEat</title>
    <%@ include file="../../fragments/head.jsp" %>
</head>
<body>
<%@ include file="../../fragments/headerRestarateur.jsp" %>

<table>
    <tr>
        <td>Nazwa użytkownika:</td>
        <td>${restaurant.name}</td>
    </tr>
    <tr>
        <td>Email:</td>
        <td>${restaurant.email}</td>
    </tr>
    <tr>
        <td>Adres:</td>
        <td>${restaurant.address}</td>
    </tr>
</table>

<%@ include file="../../fragments/jsCode.jsp" %>
</body>
</html>
