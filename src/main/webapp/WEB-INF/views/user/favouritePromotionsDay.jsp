<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Cards</title>

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

                <div id="accordion">
                    <div class="card">
                        <div class="card-header" id="headingOne">
                            <h5 class="mb-0">
                                <button class="btn btn-primary btn-lg btn-block collapsed" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                                    Poniedziałek
                                </button>
                            </h5>
                        </div>

                        <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                            <div class="card-body">
                                <div class="card shadow mb-4">

                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered" id="dataTable1" width="100%" cellspacing="0">
                                                <thead>
                                                <tr>
                                                    <th>Promocja</th>
                                                    <th>Cena</th>
                                                    <th>Dzień promocji</th>
                                                    <th>Restauracja</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach var="promotion" items="${monday}">
                                                    <tr>
                                                        <td>${promotion.name}</td>
                                                        <td>${promotion.price}</td>
                                                        <td>${promotion.dayOfWeek}</td>
                                                        <td>${promotion.restaurant.name}</td>
                                                        <td>
                                                            <a href="/user/promotion/${promotion.id}/info">Zobacz</a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingTwo">
                            <h5 class="mb-0">
                                <button class="btn btn-primary btn-lg btn-block collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    Wtorek
                                </button>
                            </h5>
                        </div>
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                            <div class="card-body">
                                <div class="card shadow mb-4">

                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered" id="dataTable2" width="100%" cellspacing="0">
                                                <thead>
                                                <tr>
                                                    <th>Promocja</th>
                                                    <th>Cena</th>
                                                    <th>Dzień promocji</th>
                                                    <th>Restauracja</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach var="promotion" items="${tuesday}">
                                                    <tr>
                                                        <td>${promotion.name}</td>
                                                        <td>${promotion.price}</td>
                                                        <td>${promotion.dayOfWeek}</td>
                                                        <td>${promotion.restaurant.name}</td>
                                                        <td>
                                                            <a href="/user/promotion/${promotion.id}/info">Zobacz</a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingThree">
                            <h5 class="mb-0">
                                <button class="btn btn-primary btn-lg btn-block collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                    Środa
                                </button>
                            </h5>
                        </div>
                        <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                            <div class="card-body">
                                <div class="card shadow mb-4">

                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered" id="dataTable3" width="100%" cellspacing="0">
                                                <thead>
                                                <tr>
                                                    <th>Promocja</th>
                                                    <th>Cena</th>
                                                    <th>Dzień promocji</th>
                                                    <th>Restauracja</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach var="promotion" items="${wednesday}">
                                                    <tr>
                                                        <td>${promotion.name}</td>
                                                        <td>${promotion.price}</td>
                                                        <td>${promotion.dayOfWeek}</td>
                                                        <td>${promotion.restaurant.name}</td>
                                                        <td>
                                                            <a href="/user/promotion/${promotion.id}/info">Zobacz</a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingFour">
                            <h5 class="mb-0">
                                <button class="btn btn-primary btn-lg btn-block collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                    Czwartek
                                </button>
                            </h5>
                        </div>
                        <div id="collapseFour" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                            <div class="card-body">
                                <div class="card shadow mb-4">

                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered" id="dataTable4" width="100%" cellspacing="0">
                                                <thead>
                                                <tr>
                                                    <th>Promocja</th>
                                                    <th>Cena</th>
                                                    <th>Dzień promocji</th>
                                                    <th>Restauracja</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach var="promotion" items="${thursday}">
                                                    <tr>
                                                        <td>${promotion.name}</td>
                                                        <td>${promotion.price}</td>
                                                        <td>${promotion.dayOfWeek}</td>
                                                        <td>${promotion.restaurant.name}</td>
                                                        <td>
                                                            <a href="/user/promotion/${promotion.id}/info">Zobacz</a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingFive">
                            <h5 class="mb-0">
                                <button class="btn btn-primary btn-lg btn-block collapsed" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                    Piatek
                                </button>
                            </h5>
                        </div>
                        <div id="collapseFive" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                            <div class="card-body">
                                <div class="card shadow mb-4">

                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered" id="dataTable5" width="100%" cellspacing="0">
                                                <thead>
                                                <tr>
                                                    <th>Promocja</th>
                                                    <th>Cena</th>
                                                    <th>Dzień promocji</th>
                                                    <th>Restauracja</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach var="promotion" items="${friday}">
                                                    <tr>
                                                        <td>${promotion.name}</td>
                                                        <td>${promotion.price}</td>
                                                        <td>${promotion.dayOfWeek}</td>
                                                        <td>${promotion.restaurant.name}</td>
                                                        <td>
                                                            <a href="/user/promotion/${promotion.id}/info">Zobacz</a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingSix">
                            <h5 class="mb-0">
                                <button class="btn btn-primary btn-lg btn-block collapsed" data-toggle="collapse" data-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                                    Sobota
                                </button>
                            </h5>
                        </div>
                        <div id="collapseSix" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                            <div class="card-body">
                                <div class="card shadow mb-4">

                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered" id="dataTable6" width="100%" cellspacing="0">
                                                <thead>
                                                <tr>
                                                    <th>Promocja</th>
                                                    <th>Cena</th>
                                                    <th>Dzień promocji</th>
                                                    <th>Restauracja</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach var="promotion" items="${saturday}">
                                                    <tr>
                                                        <td>${promotion.name}</td>
                                                        <td>${promotion.price}</td>
                                                        <td>${promotion.dayOfWeek}</td>
                                                        <td>${promotion.restaurant.name}</td>
                                                        <td>
                                                            <a href="/user/promotion/${promotion.id}/info">Zobacz</a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingSeven">
                            <h5 class="mb-0">
                                <button class="btn btn-primary btn-lg btn-block collapsed" data-toggle="collapse" data-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                                    Niedziela
                                </button>
                            </h5>
                        </div>
                        <div id="collapseSeven" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                            <div class="card-body">
                                <div class="card shadow mb-4">

                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered" id="dataTable7" width="100%" cellspacing="0">
                                                <thead>
                                                <tr>
                                                    <th>Promocja</th>
                                                    <th>Cena</th>
                                                    <th>Dzień promocji</th>
                                                    <th>Restauracja</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach var="promotion" items="${sunday}">
                                                    <tr>
                                                        <td>${promotion.name}</td>
                                                        <td>${promotion.price}</td>
                                                        <td>${promotion.dayOfWeek}</td>
                                                        <td>${promotion.restaurant.name}</td>
                                                        <td>
                                                            <a href="/user/promotion/${promotion.id}/info">Zobacz</a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

                <!-- Page Heading -->

            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <%@ include file="../fragments/footer.jsp" %>
        <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<%@ include file="../fragments/scrollToTop.jsp" %>
<%@ include file="../fragments/logoutModal.jsp" %>
<%@ include file="../fragments/jsCode.jsp" %>

</body>

</html>
