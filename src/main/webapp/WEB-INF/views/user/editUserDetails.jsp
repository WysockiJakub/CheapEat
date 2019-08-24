<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>

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

    <%@ include file="../fragments/sidebarUser.jsp" %>


    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <%@ include file="../fragments/topbarUser.jsp" %>


            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">Edycja profilu</h1>
                </div>
                <form:form method="post" modelAttribute="userDetails" class="well form-horizontal">
                    <fieldset>
                        <div class="form-group">
                            <label for="emailId" class="col-md-4 control-label">Email:</label>
                            <form:input type="text" path="email" id="emailId" class="form-control"/>
                            <form:errors path="email" element="div"/>
                        </div>

                        <br/><br/>

                        <div class="form-group">
                            <label for="addressId" class="col-md-4 control-label">Adres:</label>
                            <form:input type="text" path="address" id="addressId" class="form-control"/>
                            <form:errors path="address" element="div"/>
                        </div>

                        <br/><br/>

                        <div class="form-group">
                            <label for="dateOfBirthId" class="col-md-4 control-label">Data urodzenia:</label>
                            <form:input type="date" path="dateOfBirth" id="dateOfBirthId" class="form-control" min="1890-01-01" max="2019-09-20"/>
                            <form:errors path="dateOfBirth" element="div"/>
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
