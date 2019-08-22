<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: jakub
  Date: 21.08.19
  Time: 22:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    <form:form method="post" modelAttribute="restaurant">
        <label for="nameId">Nazwa restauracji:</label>
        <form:input type="text" path="name" id="nameId"/>
        <form:errors path="name" element="div"/>

        <br/><br/>

        <label for="infoId">Informacje o restauracji:</label>
        <form:input type="textarea" path="info" id="infoId" rows="3" cols="20"/>
        <form:errors path="info" element="div"/>

        <br/><br/>

        <label for="cityId">Miasto:</label>
        <form:input type="text" path="city" id="cityId"/>
        <form:errors path="city" element="div"/>

        <br/><br/>

        <label for="zipCodeId">Kod pocztowy:</label>
        <form:input type="text" path="zipCode" id="zipCodeId"/>
        <form:errors path="zipCode" element="div"/>

        <br/><br/>

        <label for="streetId">Ulica:</label>
        <form:input type="text" path="street" id="streetId"/>
        <form:errors path="street" element="div"/>

        <br/><br/>

        <label for="houseNumberId">Numer lokalu:</label>
        <form:input type="text" path="houseNumber" id="houseNumberId"/>
        <form:errors path="houseNumber" element="div"/>

        <br/><br/>

        <label for="websiteId">Strona internetowa:</label>
        <form:input type="text" path="website" id="websiteId"/>
        <form:errors path="website" element="div"/>

        <br/><br/>

        <label for="phoneNumberId">Numer telefonu:</label>
        <form:input type="text" path="phoneNumber" id="phoneNumberId"/>
        <form:errors path="phoneNumber" element="div"/>

        <br/><br/>

        <label for="phoneNumberId">Email:</label>
        <form:input type="text" path="email" id="emailId"/>
        <form:errors path="email" element="div"/>

        <br/><br/>

        <label for="phoneNumberId">Link lokalizacyjny:</label>
        <form:input type="text" path="localizationUrl" id="emailId"/>
        <form:errors path="email" element="div"/>

        <br/><br/>

        <input type="submit" value="Zapisz">
    </form:form>
</div>
</body>
</html>
