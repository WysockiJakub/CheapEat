<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: jakub
  Date: 09.08.19
  Time: 13:47
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

<h2>Tekst kontaktu</h2>

<c:if test="${sended == null}">
<form:form method="post" modelAttribute="contactMessage">
    <label for="contactMessageId">Firstame:</label>
        <form:input type="text" path="message" id="contactMessageId"/>
        <form:errors path="message" element="div"/>

    <br/><br/>

    <input type="submit" value="Send">
</form:form>
</c:if>
<br/><br/>

<div>${sended}</div>
<%@ include file="./fragments/jsCode.jsp" %>

</body>
</html>
