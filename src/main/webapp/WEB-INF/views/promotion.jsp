<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<%@ include file="../fragments/header.jsp" %>

<div>
    <table>
    <tr>
        <th>Promocja</th>
        <th>Opis</th>
        <th>Cena</th>
        <th>Dzień promocji</th>
        <th>Restauracja</th>
    </tr>
        <tr>
            <td>${promotion.name}</td>
            <td>${promotion.description}</td>
            <td>${promotion.price}</td>
            <td>${promotion.dayOfWeek}</td>
            <td>${promotion.restaurant.name}</td>
            <td>
                <a href="#" onclick="confirmDelete(${author.id}, '${author.fullName}')">Delete</a>
                <a href="addToFavourite/${promotion.id}">Dodaj do ulubionych</a>
            </td>
        </tr>
    </table>
</div>
<div>
    <form:form method="post" modelAttribute="review">
        <label for="reviewId">Review:</label>
        <form:input type="textarea" path="content" id="reviewId" rows="3" cols="20"/>
        <form:errors path="content" element="div"/>

        <br/><br/>

        <input type="submit" value="Add Review">
    </form:form>
</div>
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

<%@ include file="../fragments/jsCode.jsp" %>
</body>
</html>
