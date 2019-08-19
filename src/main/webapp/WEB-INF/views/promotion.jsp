<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <%@ include file="./fragments/head.jsp" %>
</head>
<body>
<%@ include file="./fragments/headerUser.jsp" %>

<div>
    <table>
    <tr>
        <th>Promocja</th>
        <th>Opis</th>
        <th>Cena</th>
        <th>Dzień promocji</th>
        <th>Restauracja</th>
        <th>Ocena</th>
        <th>Subskrypcje</th>
    </tr>
        <tr>
            <td>${promotion.name}</td>
            <td>${promotion.description}</td>
            <td>${promotion.price}</td>
            <td>${promotion.dayOfWeek}</td>
            <td>${promotion.restaurant.name}</td>
            <td>${promotion.averageNote}</td>
            <td>${promotion.subscription}</td>
            <td>
                <c:choose>
                    <c:when test="${!favourite}">
                        <a href="/user/promotion/addToFavourite/${promotion.id}">Dodaj do ulubionych</a>
                    </c:when>
                    <C:otherwise>
                        <a href="/user/promotion/deleteFromFavourite/${promotion.id}">Usuń z ulubionych</a>
                    </C:otherwise>
                </c:choose>
            </td>
        </tr>
    </table>
</div>
    <div>
        <c:if test = "${addedReview == false}">
            <form:form method="post" modelAttribute="review">
                <label for="reviewId">Review:</label>
                <form:input type="textarea" path="content" id="reviewId" rows="3" cols="20"/>
                <form:errors path="content" element="div"/>
                <form:select path="note">
                    <c:forEach var="number" begin="1" end="5">
                        <form:option value="${number}"/>
                    </c:forEach>
                </form:select>

                <input type="submit" value="Add Review">
            </form:form>
        </c:if>
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
<%@ include file="./fragments/jsCode.jsp" %>
</body>
</html>
