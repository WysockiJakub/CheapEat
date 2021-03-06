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
    <script>
        function confirmDelete(id, name) {
            if (confirm("Czy na pewno usunąć promocję \"" + name + "\"")) {
                window.location.href = "/restaurateur/promotion/delete/" + id
            }
        }
    </script>
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
                    <h1 class="h3 mb-0 text-gray-800">Promocje restauracji</h1>
                </div>

                <!-- Content Row -->
                <div class="card shadow mb-4">

                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    <th>Promocja</th>
                                    <th>Ocena</th>
                                    <th>Liczba subskrypcji</th>
                                    <th>Dzień promocji</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="promotion" items="${restaurantPromotionList}">
                                    <tr>
                                        <td>${promotion.name}</td>
                                        <td>${promotion.averageNote}</td>
                                        <td>${promotion.subscription}</td>
                                        <td>${promotion.dayOfWeek}</td>
                                        <td>
                                            <a href="/restaurateur/promotion/${promotion.id}/info">Zobacz</a>
                                        </td>
                                        <td>
                                            <a href="/restaurateur/promotion/edit/${promotion.id}">Edytuj</a>
                                        </td>
                                        <td>
                                            <a href="#" onclick="confirmDelete(${promotion.id}, '${promotion.name}')">Usuń</a>
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
