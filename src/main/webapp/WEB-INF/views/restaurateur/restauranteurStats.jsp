<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jakub
  Date: 13.08.19
  Time: 18:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">Średnia ocena wszystkich promocji</th>
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

</body>
</html>
