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
                                    Wegetariańskie
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
                                                <c:forEach var="promotion" items="${wegetarianskie}">
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
                                    Chińszczyzna
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
                                                <c:forEach var="promotion" items="${chinszczyzna}">
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
                                    Owoce Morza
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
                                                <c:forEach var="promotion" items="${owoceMorza}">
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
                                    Naleśniki
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
                                                <c:forEach var="promotion" items="${nalesniki}">
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
                                    Obiady domowe
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
                                                <c:forEach var="promotion" items="${obiadyDomowe}">
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
                                    Kebab
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
                                                <c:forEach var="promotion" items="${kebab}">
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
                        <div class="card-header" id="headingEight">
                            <h5 class="mb-0">
                                <button class="btn btn-primary btn-lg btn-block collapsed" data-toggle="collapse" data-target="#collapseEight" aria-expanded="false" aria-controls="collapseEight">
                                    Burgery
                                </button>
                            </h5>
                        </div>
                        <div id="collapseEight" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                            <div class="card-body">
                                <div class="card shadow mb-4">

                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered" id="dataTable8" width="100%" cellspacing="0">
                                                <thead>
                                                <tr>
                                                    <th>Promocja</th>
                                                    <th>Cena</th>
                                                    <th>Dzień promocji</th>
                                                    <th>Restauracja</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach var="promotion" items="${burgery}">
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
                        <div class="card-header" id="headingTen">
                            <h5 class="mb-0">
                                <button class="btn btn-primary btn-lg btn-block collapsed" data-toggle="collapse" data-target="#collapseTen" aria-expanded="false" aria-controls="collapseTen">
                                    Pierogi
                                </button>
                            </h5>
                        </div>
                        <div id="collapseTen" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                            <div class="card-body">
                                <div class="card shadow mb-4">

                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered" id="dataTable10" width="100%" cellspacing="0">
                                                <thead>
                                                <tr>
                                                    <th>Promocja</th>
                                                    <th>Cena</th>
                                                    <th>Dzień promocji</th>
                                                    <th>Restauracja</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach var="promotion" items="${pierogi}">
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
                        <div class="card-header" id="headingEleven">
                            <h5 class="mb-0">
                                <button class="btn btn-primary btn-lg btn-block collapsed" data-toggle="collapse" data-target="#collapseEleven" aria-expanded="false" aria-controls="collapseEleven">
                                    Sushi
                                </button>
                            </h5>
                        </div>
                        <div id="collapseEleven" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                            <div class="card-body">
                                <div class="card shadow mb-4">

                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered" id="dataTable11" width="100%" cellspacing="0">
                                                <thead>
                                                <tr>
                                                    <th>Promocja</th>
                                                    <th>Cena</th>
                                                    <th>Dzień promocji</th>
                                                    <th>Restauracja</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach var="promotion" items="${sushi}">
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
                        <div class="card-header" id="headingThirteen">
                            <h5 class="mb-0">
                                <button class="btn btn-primary btn-lg btn-block collapsed" data-toggle="collapse" data-target="#collapseThirteen" aria-expanded="false" aria-controls="collapseThirteen">
                                    Makarony
                                </button>
                            </h5>
                        </div>
                        <div id="collapseThirteen" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                            <div class="card-body">
                                <div class="card shadow mb-4">

                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered" id="dataTable13" width="100%" cellspacing="0">
                                                <thead>
                                                <tr>
                                                    <th>Promocja</th>
                                                    <th>Cena</th>
                                                    <th>Dzień promocji</th>
                                                    <th>Restauracja</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach var="promotion" items="${makarony}">
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
                        <div class="card-header" id="headingFourteen">
                            <h5 class="mb-0">
                                <button class="btn btn-primary btn-lg btn-block collapsed" data-toggle="collapse" data-target="#collapseFourteen" aria-expanded="false" aria-controls="collapseFourteen">
                                    Sałatki
                                </button>
                            </h5>
                        </div>
                        <div id="collapseFourteen" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                            <div class="card-body">
                                <div class="card shadow mb-4">

                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered" id="dataTable14" width="100%" cellspacing="0">
                                                <thead>
                                                <tr>
                                                    <th>Promocja</th>
                                                    <th>Cena</th>
                                                    <th>Dzień promocji</th>
                                                    <th>Restauracja</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach var="promotion" items="${salatki}">
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
                        <div class="card-header" id="headinFifteen">
                            <h5 class="mb-0">
                                <button class="btn btn-primary btn-lg btn-block collapsed" data-toggle="collapse" data-target="#collapseFifteen" aria-expanded="false" aria-controls="collapseFifteen">
                                    Ramen
                                </button>
                            </h5>
                        </div>
                        <div id="collapseFifteen" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                            <div class="card-body">
                                <div class="card shadow mb-4">

                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered" id="dataTable15" width="100%" cellspacing="0">
                                                <thead>
                                                <tr>
                                                    <th>Promocja</th>
                                                    <th>Cena</th>
                                                    <th>Dzień promocji</th>
                                                    <th>Restauracja</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach var="promotion" items="${ramen}">
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
                        <div class="card-header" id="headingSixteen">
                            <h5 class="mb-0">
                                <button class="btn btn-primary btn-lg btn-block collapsed" data-toggle="collapse" data-target="#collapseSixteen" aria-expanded="false" aria-controls="collapseSixteen">
                                    Pizza
                                </button>
                            </h5>
                        </div>
                        <div id="collapseSixteen" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                            <div class="card-body">
                                <div class="card shadow mb-4">

                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered" id="dataTable16" width="100%" cellspacing="0">
                                                <thead>
                                                <tr>
                                                    <th>Promocja</th>
                                                    <th>Cena</th>
                                                    <th>Dzień promocji</th>
                                                    <th>Restauracja</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach var="promotion" items="${pizza}">
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
                        <div class="card-header" id="headingSeventeen">
                            <h5 class="mb-0">
                                <button class="btn btn-primary btn-lg btn-block collapsed" data-toggle="collapse" data-target="#collapseSeventeen" aria-expanded="false" aria-controls="collapseSeventeen">
                                    Alkohole
                                </button>
                            </h5>
                        </div>
                        <div id="collapseSeventeen" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                            <div class="card-body">
                                <div class="card shadow mb-4">

                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered" id="dataTable17" width="100%" cellspacing="0">
                                                <thead>
                                                <tr>
                                                    <th>Promocja</th>
                                                    <th>Cena</th>
                                                    <th>Dzień promocji</th>
                                                    <th>Restauracja</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach var="promotion" items="${alkohole}">
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
