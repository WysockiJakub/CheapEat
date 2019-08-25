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

                <!-- Page Heading -->

                <div class="row">
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">${restaurant.name}</h1>
                    </div>
                </div>

                <%@ include file="../fragments/restaurantHeader.jsp" %>

                <ul class="nav nav-tabs">
                    <li class="nav-item">
                        <a class="nav-link active" href="/user/restaurant/${restaurant.id}/info">Opis</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/user/restaurant/${restaurant.id}/promotions">Promocje</a>
                    </li>
                </ul>

                <div class="row">

                    <div class="col-sm">

                        <!-- Basic Card Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Opis</h6>
                            </div>
                            <div class="card-body">
                                ${restaurant.info}
                            </div>
                        </div>

                    </div>

                    <div class="col-sm">

                        <!-- Basic Card Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Kontakt</h6>
                            </div>
                            <div class="card-body">
                                <strong>Miasto: </strong>${restaurant.city}, ${restaurant.zipCode}<br/><br/>
                                <strong>Ulica: </strong>${restaurant.street} ${restaurant.houseNumber}<br/><br/>
                                <strong>Numer telefonu: </strong>${restaurant.phoneNumber}<br/><br/>
                                <strong>Email: </strong>${restaurant.email}<br/><br/>
                                <strong>Strona internetowa: </strong><a href="${restaurant.website}">${restaurant.website}</a><br/><br/>
                            </div>
                        </div>

                    </div>

                    <div class="col-sm">

                        <!-- Basic Card Example -->

                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Lokalizacja</h6>
                            </div>
                            <div>
                                <iframe width="400" height="275" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="${restaurant.localizationUrl}"></iframe>
                            </div>
                        </div>

                    </div>

                </div>

            </div>
            <!-- /.container-fluid -->

        </div>

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
