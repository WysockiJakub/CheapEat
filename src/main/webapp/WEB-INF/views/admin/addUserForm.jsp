<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: jakub
  Date: 14.08.19
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ include file="./../fragments/head.jsp" %>

</head>
<body>
<%@ include file="./../fragments/headerAdmin.jsp" %>

<div>
    <form:form method="post" modelAttribute="user">
        <label for="nameId">Nazwa użytkownika:</label>
        <form:input type="text" path="username" id="nameId"/>
        <form:errors path="username" element="div"/>

        <br/><br/>

        <label for="passwordId">Hasło:</label>
        <form:input type="password" path="password" id="passwordId"/>
        <form:errors path="password" element="div"/>

        <br/><br/>

        <input type="submit" value="Dalej">
    </form:form>
</div>
<%@ include file="./../fragments/jsCode.jsp" %>

</body>
</html>
