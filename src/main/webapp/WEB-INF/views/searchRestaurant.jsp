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
    <%@ include file="./fragments/head.jsp" %>
</head>
<body>
<%@ include file="./fragments/headerUser.jsp" %>
<table>
    <tr>
        <td>
            <a href="/user/search/restaurant/all">Wszystkie</a>
        </td>
        <td>
            <a href="/user/search/restaurant/today">Dzisiaj</a>
        </td>
        <td>
            <a href="/user/search/restaurant/day/1">Poniedzialek</a>
        </td>
        <td>
            <a href="/usersearch/restaurant/day/2">Wtorek</a>
        </td>
        <td>
            <a href="/user/search/restaurant/day/3">Środa</a>
        </td>
        <td>
            <a href="/user/search/restaurant/day/4">Czwartek</a>
        </td>
        <td>
            <a href="/user/search/restaurant/day/5">Piątek</a>
        </td>
        <td>
            <a href="/user/search/restaurant/day/6">Sobota</a>
        </td>
        <td>
            <a href="/user/search/restaurant/day/7">Niedziela</a>
        </td>
        <td>
            <a href="/user/search/restaurant/Polska">Polska</a>
        </td>
        <td>
            <a href="/user/search/restaurant/Owoce%20morza">Owoce morza</a>
        </td>
        <td>
            <a href="/user/search/restaurant/Burger">Burger</a>
        </td>
        <td>
            <a href="/user/search/restaurant/Amerykanska">Amerykanska</a>
        </td>

    </tr>
</table>
<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">Restauracja</th>
        <th scope="col">Średnia ocena</th>
        <th scope="col">Liczba subskrypcji promocji</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="restaurant" items="${list}">
        <tr>
            <td>${restaurant.name}</td>
            <td>${restaurant.avgNote}</td>
<%--            <td>${restaurant.price}</td>--%>
            <td>
                <a href="/user/restaurant/${restaurant.id}">Zobacz</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<%@ include file="./fragments/jsCode.jsp" %>
</body>
</html>
