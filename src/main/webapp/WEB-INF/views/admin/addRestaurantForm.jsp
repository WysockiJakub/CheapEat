<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: jakub
  Date: 14.08.19
  Time: 15:53
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
    <form:form method="post" modelAttribute="restaurant">
        <label for="nameId">Nazwa restauracji:</label>
        <form:input type="text" path="name" id="nameId"/>
        <form:errors path="name" element="div"/>

        <br/><br/>

        <input type="submit" value="Dodaj">
    </form:form>
</div>
<%@ include file="./../fragments/jsCode.jsp" %>

</body>
</html>
