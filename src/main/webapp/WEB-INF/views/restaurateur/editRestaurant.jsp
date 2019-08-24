<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    response.setCharacterEncoding("UTF-8");
    request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>CheapEat</title>

    <%@ include file="../fragments/head.jsp" %>


</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <%@ include file="../fragments/sidebarRestaurateur.jsp" %>


    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <%@ include file="../fragments/topbarRestaurateur.jsp" %>


            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">Edycja profilu</h1>
                </div>
                <form:form method="post" modelAttribute="restaurant" class="well form-horizontal">
                    <fieldset>
                        <div class="form-group">
                            <label for="nameId" class="col-md-4 control-label">Nazwa restauracji:</label>
                            <form:input type="text" path="name" id="nameId" class="form-control"/>
                            <form:errors path="name" element="div"/>
                        </div>

                        <br/><br/>

                        <div class="form-group">
                            <label for="infoId" class="col-md-4 control-label">Informacje o restauracji:</label>
                            <form:textarea type="textarea" path="info" id="infoId" class="form-control" cols="10" rows="5"/>
                            <form:errors path="info" element="div"/>
                        </div>

                        <br/><br/>

                        <div class="form-group">
                            <label for="cityId" class="col-md-4 control-label">Miasto:</label>
                            <form:input type="text" path="city" id="cityId" class="form-control"/>
                            <form:errors path="city" element="div"/>
                        </div>

                        <br/><br/>

                        <div class="form-group">
                            <label for="zipCodeId" class="col-md-4 control-label">Kod pocztowy:</label>
                            <form:input type="text" path="zipCode" id="zipCodeId" class="form-control"/>
                            <form:errors path="zipCode" element="div"/>
                        </div>

                        <br/><br/>

                        <div class="form-group">
                            <label for="streetId" class="col-md-4 control-label">Ulica:</label>
                            <form:input type="text" path="street" id="streetId" class="form-control"/>
                            <form:errors path="street" element="div"/>
                        </div>

                        <br/><br/>

                        <div class="form-group">
                            <label for="houseNumberId" class="col-md-4 control-label">Numer lokalu:</label>
                            <form:input type="text" path="houseNumber" id="houseNumberId" class="form-control"/>
                            <form:errors path="houseNumber" element="div"/>
                        </div>

                        <br/><br/>

                        <div class="form-group">
                            <label for="websiteId" class="col-md-4 control-label">Strona internetowa:</label>
                            <form:input type="text" path="website" id="websiteId" class="form-control"/>
                            <form:errors path="website" element="div"/>
                        </div>

                        <br/><br/>

                        <div class="form-group">
                            <label for="phoneNumberId" class="col-md-4 control-label">Numer telefonu:</label>
                            <form:input type="text" path="phoneNumber" id="phoneNumberId" class="form-control"/>
                            <form:errors path="phoneNumber" element="div"/>
                        </div>

                        <br/><br/>

                        <div class="form-group">
                            <label for="emailId" class="col-md-4 control-label">Email:</label>
                            <form:input type="text" path="email" id="emailId" class="form-control"/>
                            <form:errors path="email" element="div"/>
                        </div>

                        <br/><br/>

                        <div class="form-group">
                            <label for="localizationUrlId" class="col-md-4 control-label">Link lokalizacyjny:</label>
                            <form:input type="text" path="localizationUrl" id="localizationUrlId" class="form-control"/>
                            <form:errors path="localizationUrl" element="div"/>
                        </div>

                        <br/><br/>

                        <input class="btn btn-primary" type="submit" value="Zapisz"><br/><br/>
                            ${saved}

                    </fieldset>
                </form:form>
            </div>
        </div>
        <!-- End of Main Content -->

        <%@ include file="../fragments/footer.jsp" %>

    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<%@ include file="../fragments/scrollToTop.jsp" %>
<%@ include file="../fragments/logoutModal.jsp" %>
<%@ include file="../fragments/jsCode.jsp" %>

</body>

</html>