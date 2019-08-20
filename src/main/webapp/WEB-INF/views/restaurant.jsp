<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jakub
  Date: 19.08.19
  Time: 22:31
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
                <th>Restauracja</th>
                <th>Opis</th>
                <th>Adres</th>
                <th>Strona internetowa</th>
                <th>Restauracja</th>
                <th>Średnia ocena promocji</th>
                <th>Subskrypcje</th>
            </tr>
            <tr>
                <td>${restaurant.name}</td>
                <td>${restaurant.info}</td>
                <td>${restaurant.address}</td>
                <td>${restaurant.website}</td>
                <td>${restaurant.phoneNumber}</td>
                <td>${restaurant.avgNote}</td>
    <%--            <td>${restaurant.subscription}</td>--%>
    <%--            <td>--%>
    <%--                <c:choose>--%>
    <%--                    <c:when test="${!favourite}">--%>
    <%--                        <a href="/user/promotion/addToFavourite/${promotion.id}">Dodaj do ulubionych</a>--%>
    <%--                    </c:when>--%>
    <%--                    <C:otherwise>--%>
    <%--                        <a href="/user/promotion/deleteFromFavourite/${promotion.id}">Usuń z ulubionych</a>--%>
    <%--                    </C:otherwise>--%>
    <%--                </c:choose>--%>
    <%--            </td>--%>
            </tr>

                <div>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2443.722258295065!2d21.00855235120643!3d52.23026366531413!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x471eccf3113c6f7d%3A0x1868492e117ad38b!2sPatelnia!5e0!3m2!1spl!2spl!4v1566248608358!5m2!1spl!2spl" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
        </table>
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">Dzisiejsza promocja</th>
                <th scope="col">Opis</th>
                <th scope="col">Cena</th>
                <th scope="col">Dzień promocji</th>
                <th scope="col">Restauracja</th>
                <th scope="col">Ocena</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="promotion" items="${todayPromotions}">
                <tr>
                    <td>${promotion.name}</td>
                    <td>${promotion.description}</td>
                    <td>${promotion.price}</td>
                    <td>${promotion.dayOfWeek}</td>
                    <td>${promotion.restaurant.name}</td>
                    <td>${promotion.averageNote}</td>
                    <td>
                        <a href="/user/promotion/${promotion.id}">Zobacz</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">Promocja</th>
                <th scope="col">Opis</th>
                <th scope="col">Cena</th>
                <th scope="col">Dzień promocji</th>
                <th scope="col">Restauracja</th>
                <th scope="col">Ocena</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="promotion" items="${restaurant.promotions}">
                <tr>
                    <td>${promotion.name}</td>
                    <td>${promotion.description}</td>
                    <td>${promotion.price}</td>
                    <td>${promotion.dayOfWeek}</td>
                    <td>${promotion.restaurant.name}</td>
                    <td>${promotion.averageNote}</td>
                    <td>
                        <a href="/user/promotion/${promotion.id}">Zobacz</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <%@ include file="./fragments/jsCode.jsp" %>
</body>
</html>
