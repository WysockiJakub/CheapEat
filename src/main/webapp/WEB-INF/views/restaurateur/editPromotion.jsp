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
                    <h1 class="h3 mb-0 text-gray-800">Edytuj promocję</h1>
                </div>
                <form:form method="post" modelAttribute="promotion" class="well form-horizontal">
                    <fieldset>
                        <div class="form-group">
                            <label for="nameId" class="col-md-4 control-label">Nazwa promocji:</label>
                            <form:input type="text" path="name" id="nameId" class="form-control"/>
                            <form:errors path="name" element="div"/>
                        </div>

                        <br/>

                        <div class="form-group">
                            <label for="descriptionId" class="col-md-4 control-label">Informacje o restauracji:</label>
                            <form:textarea type="textarea" path="description" id="descriptionId" class="form-control" cols="10" rows="5" placeholder="Maksymalnie 500 znaków"/>
                            <form:errors path="description" element="div"/>
                        </div>

                        <br/>

                        <div class="form-group">
                            <label for="categoryId" class="col-md-4 control-label">Kategoria:</label>
                            <form:select type="text" path="category" id="categoryId" class="form-control">
                                <c:forEach var="category" items="${categories}">
                                    <form:option value="${category}"/>
                                </c:forEach>
                            </form:select>
                            <form:errors path="category" element="div"/>
                        </div>

                        <br/>

                        <div class="form-group">
                            <label for="priceId" class="col-md-4 control-label">Cena:</label>
                            <form:input type="number" path="price" id="priceId" class="form-control" step="0.01"/>
                            <form:errors path="price" element="div"/>
                        </div>

                        <br/>

                        <div class="form-group">
                            <label for="dayOfWeekId" class="col-md-4 control-label">Dzień tygodnia:</label>
                            <form:select type="text" path="dayOfWeek" id="dayOfWeekId" class="form-control">
                                <c:forEach var="dayOfWeek" items="${dayOfWeek}">
                                    <form:option value="${dayOfWeek}"/>
                                </c:forEach>
                            </form:select>
                            <form:errors path="dayOfWeek" element="div"/>
                        </div>

                        <br/>

                        <input class="btn btn-primary" type="submit" value="Zapisz"><br/><br/>

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