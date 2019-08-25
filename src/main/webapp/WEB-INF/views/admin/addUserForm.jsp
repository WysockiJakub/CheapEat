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

    <%@ include file="../fragments/sidebarAdmin.jsp" %>


    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <%@ include file="../fragments/topbarRestaurateur.jsp" %>

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">Dodaj użytkownika</h1>
                </div>

                <form:form method="post" modelAttribute="user" class="well form-horizontal">
                    <fieldset>
                        <div class="form-group">
                            <label for="usernameId" class="col-md-4 control-label">Nazwa użytkownika:</label>
                            <form:input type="text" path="username" id="usernameId" class="form-control" placeholder="Od 6 do 32 znaków..."/>
                            <form:errors path="username" element="div"/>
                        </div>

                        <br/>

                        <div class="form-group">
                            <label for="passwordId" class="col-md-4 control-label">Hasło:</label>
                            <form:input type="password" path="password" id="passwordId" class="form-control" placeholder="Od 8 do 32 znaków..."/>
                            <form:errors path="password" element="div"/>
                        </div>

                        <br/>

                        <input class="btn btn-primary" type="submit" value="Dodaj użytkownika"><br/><br/>

                    </fieldset>
                </form:form>

            </div>
            <!-- /.container-fluid -->

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
