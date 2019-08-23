<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: arkadiusz
  Date: 2019-08-21
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>CheapEat</title>

    <%@ include file="./fragments/head.jsp" %>

</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <%@ include file="./fragments/sidebarUser.jsp" %>


    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <%@ include file="./fragments/topbarUser.jsp" %>

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <h1 class="h3 mb-2 text-gray-800">Tables</h1>
                <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the <a target="_blank" href="https://datatables.net">official DataTables documentation</a>.</p>

                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    <th>Restauracja</th>
                                    <th>Liczba promocji</th>
                                    <th>Średnia ocena</th>
                                    <th>Liczba subskrypcji promocji</th>
                                </tr>
                                </thead>
                                <tfoot>
                                <tr>
                                    <th>Restauracja</th>
                                    <th>Średnia ocena</th>
                                    <th>Liczba subskrypcji promocji</th>
                                </tr>
                                </tfoot>
                                <tbody>
                                <c:forEach var="restaurant" items="${list}">
                                    <tr>
                                        <td>${restaurant.name}</td>
                                        <td>${restaurant.promotions.size()}</td>
                                        <td>${restaurant.avgNote}</td>
                                            <%--            <td>${restaurant.price}</td>--%>
                                        <td>
                                            <a href="/user/restaurant/${restaurant.id}/info">Zobacz</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        <%@ include file="./fragments/footer.jsp" %>

    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<%@ include file="./fragments/scrollToTop.jsp" %>
<%@ include file="./fragments/logoutModal.jsp" %>
<%@ include file="./fragments/jsCode.jsp" %>

</body>
</html>
