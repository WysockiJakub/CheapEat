<%--
  Created by IntelliJ IDEA.
  User: jakub
  Date: 21.08.19
  Time: 23:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ include file="./../fragments/head.jsp" %>

</head>
<body>
<%@ include file="./../fragments/headerRestarateur.jsp" %>

<table>
    <tr>
        <td>Nazwa promocji:</td>
        <td>${promotion.name}</td>
    </tr>
    <tr>
        <td>Opis:</td>
        <td>${promotion.description}</td>
    </tr>
    <tr>
        <td>Restauracja:</td>
        <td>${promotion.restaurant.name}</td>
    </tr>
    <tr>
        <td>Kategoria:</td>
        <td>${promotion.category}</td>
    </tr>
    <tr>
        <td>Cena:</td>
        <td>${promotion.price}</td>
    </tr>
    <tr>
        <td>Dzień promocji:</td>
        <td>${promotion.dayOfWeek}</td>
    </tr>
    <tr>
        <td>Średnia ocena:</td>
        <td>${promotion.averageNote}</td>
    </tr>
    <tr>
        <td>Liczba recenzji:</td>
        <td>${promotion.reviews.size()}</td>
    </tr>
    <a href="/restaurateur/promotion/edit/${promotion.id}">Edytuj</a>
</table>
<%@ include file="./../fragments/jsCode.jsp" %>

</body>
</html>
