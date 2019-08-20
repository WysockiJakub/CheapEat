<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: jakub
  Date: 20.08.19
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit profile</title>
</head>
<body>
<div>
    <form:form method="post" modelAttribute="userDetails">
        <label for="emailId">Email:</label>
        <form:input type="text" path="email" id="emailId"/>
        <form:errors path="email" element="div"/>

        <br/><br/>

        <label for="addressId">Adres:</label>
        <form:input type="textarea" path="address" id="addressId" rows="3" cols="20"/>
        <form:errors path="address" element="div"/>

        <br/><br/>

        <label for="dateOfBirthId">Data urodzenia:</label>
        <form:input type="date" path="dateOfBirth" id="dateOfBirthId" min="1901-01-01" max="2019-12-31"/>
        <form:errors path="dateOfBirth" element="div"/>

        <br/><br/>

        <input type="submit" value="Save">
    </form:form>
</div>
</body>
</html>
