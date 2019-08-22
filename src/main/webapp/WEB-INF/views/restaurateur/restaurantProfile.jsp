<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CheapEat</title>
    <%@ include file="./../fragments/head.jsp" %>
</head>
<body>
<%@ include file="./../fragments/headerRestarateur.jsp" %>

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
        <td>Numer kontaktowy:</td>
        <td>${restaurant.phoneNumber}</td>
    </tr>
    <tr>
        <td>Strona internetowa:</td>
        <td>${restaurant.website}</td>
    </tr>
    <tr>
        <td>Miasto:</td>
        <td>${restaurant.city}</td>
    </tr>
    <tr>
        <td>Kod pocztowy:</td>
        <td>${restaurant.zipCode}</td>
    </tr>
    <tr>
        <td>Ulica:</td>
        <td>${restaurant.street}</td>
    </tr>
    <tr>
        <td>Numer lokalu:</td>
        <td>${restaurant.houseNumber}</td>
    </tr>
    <tr>
        <td>Lokalizacja:</td>
        <div>
            <iframe width="400" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="${restaurant.localizationUrl}" style="border: 1px solid black"></iframe>
        </div>
    </tr>
</table>
<a href="/restaurateur/restaurant/edit">Edytuj</a>


<%@ include file="./../fragments/jsCode.jsp" %>
</body>
</html>
