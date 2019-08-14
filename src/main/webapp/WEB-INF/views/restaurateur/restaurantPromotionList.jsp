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
    <c:forEach var="promotion" items="${restaurantPromotionList}">
        <tr>
            <td>${promotion.name}</td>
            <td>${promotion.description}</td>
            <td>${promotion.price}</td>
            <td>${promotion.dayOfWeek}</td>
            <td>${promotion.restaurant.name}</td>
            <td>
                <a href="/restaurateur/promotion/${promotion.id}">Zobacz</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<%@ include file="../../fragments/jsCode.jsp" %>
</body>
</html>
