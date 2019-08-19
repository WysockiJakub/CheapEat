<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jakub
  Date: 07.08.19
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ include file="../fragments/head.jsp" %>
</head>
<body>
<%@ include file="../fragments/headerUser.jsp" %>

<div>
    <table>
        <tr>
            <th>Promocja</th>
            <th>Opis</th>
            <th>Cena</th>
            <th>Dzień promocji</th>
            <th>Restauracja</th>
            <th>Ocena</th>
        </tr>
        <tr>
            <td>${promotion.name}</td>
            <td>${promotion.description}</td>
            <td>${promotion.price}</td>
            <td>${promotion.dayOfWeek}</td>
            <td>${promotion.restaurant.name}</td>
            <td>${promotion.averageNote}</td>
            <td>
                <a href="/restaurateur/promotion/edit/${promotion.id}">Edytuj</a>
            </td>
            <td>
                <a href="/restaurant/promotion/delete/${promotion.id}">Usuń</a>
            </td>
        </tr>
    </table>
</div>
<table>
    <c:forEach var="review" items="${promotion.reviews}">
        <tr>
            <td>${review.username}</td>
            <td>${review.content}</td>
            <td>${review.note}</td>
        </tr>
    </c:forEach>
</table>
<%@ include file="../fragments/jsCode.jsp" %>
</body>
</html>
