<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CheapEat</title>
    <%@ include file="../../fragments/head.jsp" %>
</head>
<body>
<%@ include file="../../fragments/headerRestarateur.jsp" %>

<div>
    <form:form method="post" modelAttribute="promotion">
        <label for="nameId">Nazwa:</label>
        <form:input type="text" path="name" id="nameId"/>
        <form:errors path="name" element="div"/>

        <br/><br/>

        <label for="descriptionId">Opis:</label>
        <form:input type="textarea" path="description" id="descriptionId" rows="3" cols="20"/>
        <form:errors path="description" element="div"/>

        <br/><br/>

        <label for="priceId">Cena promocyjna:</label>
        <form:input type="number" path="price" id="priceId" step="0.01"/>
        <form:errors path="price" element="div"/>

        <br/><br/>

        <label for="categoryId">Restauracja:</label>
        <form:select path="category" items="${categories}" id="categoryId"/>
        <form:errors path="category" element="div"/>

        <br/><br/>

        <label for="dayOfWeekId">Dzień tygodnia:</label>
        <form:select path="dayOfWeek" items="${dayOfWeek}" id="dayOfWeekId"/>
        <form:errors path="dayOfWeek" element="div"/>

        <br/><br/>

        <label for="restaurantId">Restauracja:</label>
        <form:select path="restaurant.id" item="${loggedUserRestaurant}" itemLabel="name" itemValue="id" id="restaurantId"/>
        <form:errors path="restaurant" element="div"/>

        <br/><br/>

        <input type="submit" value="Save">
        <c:if test="${saved == true}">
        <p>Zapisano</p>
        </c:if>

    </form:form>
</div>

<%@ include file="../../fragments/jsCode.jsp" %>
</body>
</html>
