<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jakub
  Date: 07.08.19
  Time: 13:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ include file="../fragments/head.jsp" %>
</head>
<body>
<%@ include file="../fragments/header.jsp" %>
<table>
<tr>
    <td>
        <a href="/search">Wszystkie</a>
    </td>
    <td>
        <a href="/search/today">Dzisiaj</a>
    </td>
    <td>
        <a href="/search/day/1">Poniedzialek</a>
    </td>
    <td>
        <a href="/search/day/2">Wtorek</a>
    </td>
    <td>
        <a href="/search/day/3">Środa</a>
    </td>
    <td>
        <a href="/search/day/4">Czwartek</a>
    </td>
    <td>
        <a href="/search/day/5">Piątek</a>
    </td>
    <td>
        <a href="/search/day/6">Sobota</a>
    </td>
    <td>
        <a href="/search/day/7">Niedziela</a>
    </td>
    <td>
        <a href="/search/Polska">Polska</a>
    </td>
    <td>
        <a href="/search/Owoce%20morza">Owoce morza</a>
    </td>
    <td>
        <a href="/search/Burger">Burger</a>
    </td>
    <td>
        <a href="/search/Amerykanska">Amerykanska</a>
    </td>

</tr>
</table>
<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">Promocja</th>
        <th scope="col">Opis</th>
        <th scope="col">Cena</th>
        <th scope="col">Dzień promocji</th>
        <th scope="col">Restauracja</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="promotion" items="${list}">
        <tr>
        <td>${promotion.name}</td>
        <td>${promotion.description}</td>
        <td>${promotion.price}</td>
        <td>${promotion.dayOfWeek}</td>
        <td>${promotion.restaurant.name}</td>
        <td>
            <a href="/promotion/${promotion.id}">Zobacz</a>
        </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<%@ include file="../fragments/jsCode.jsp" %>
</body>
</html>
