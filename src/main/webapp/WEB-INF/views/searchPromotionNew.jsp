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
                <!-- Search buttons -->
                <div class="row">
                    <div class="mb-4"></div>
                    <a href="/user/search/promotion/all" class="btn btn-primary" role="button" aria-pressed="true">Wszystkie</a>
                    <div class="mb-4"></div>
                    <a href="/user/search/promotion/today" class="btn btn-primary" role="button" aria-pressed="true">Dzisiaj</a>
                    <div class="mb-4"></div>
                    <div class="btn-group">
                        <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Dni tygodnia
                        </button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="/user/search/promotion/today">Dzisiaj</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="/user/search/promotion/day/1">Poniedziałek</a>
                            <a class="dropdown-item" href="/user/search/promotion/day/2">Wtorek</a>
                            <a class="dropdown-item" href="/user/search/promotion/day/3">Środa</a>
                            <a class="dropdown-item" href="/user/search/promotion/day/4">Czwartek</a>
                            <a class="dropdown-item" href="/user/search/promotion/day/5">Piątek</a>
                            <a class="dropdown-item" href="/user/search/promotion/day/6">Sobota</a>
                            <a class="dropdown-item" href="/user/search/promotion/day/7">Niedziela</a>
                        </div>
                    </div>
                    <div class="mb-4"></div>
                    <div class="btn-group">
                        <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Kategoria
                        </button>
                        <div class="dropdown-menu">
                            <c:forEach var="category" items="${categories}">
                                <a class="dropdown-item" href="/user/search/promotion/category/${category}">${category}</a>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <!-- DataTales Example -->
                <div class="card shadow mb-4">

                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    <th>Promocja</th>
                                    <th>Cena</th>
                                    <th>Dzień promocji</th>
                                    <th>Restauracja</th>
                                </tr>
                                </thead>
                                <tfoot>
                                <tr>
                                    <th>Promocja</th>
                                    <th>Cena</th>
                                    <th>Dzień promocji</th>
                                    <th>Restauracja</th>
                                </tr>
                                </tfoot>
                                <tbody>
                                <c:forEach var="promotion" items="${list}">
                                    <tr>
                                        <td>${promotion.name}</td>
                                        <td>${promotion.price}</td>
                                        <td>${promotion.dayOfWeek}</td>
                                        <td>${promotion.restaurant.name}</td>
                                        <td>
                                            <a href="/user/promotion/${promotion.id}">Zobacz</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
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
