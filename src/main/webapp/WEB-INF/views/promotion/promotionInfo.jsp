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
                        <c:choose>
                            <c:when test="${!favourite}">
                                <a href="/user/promotion/addToFavourite/${promotion.id}" class="btn btn-success btn-icon-split">
                                    <span class="icon text-white-50">
                                      <i class="fas fa-check"></i>
                                    </span>
                                    <span class="text">Dodaj do ulubionych</span>
                                </a>
                            </c:when>
                            <C:otherwise>
                                <a href="/user/promotion/deleteFromFavourite/${promotion.id}" class="btn btn-danger btn-icon-split">
                                    <span class="icon text-white-50">
                                      <i class="fas fa-trash"></i>
                                    </span>
                                    <span class="text">Usuń z ulubionych</span>
                                </a>
                            </C:otherwise>
                        </c:choose>
                    </div>
                </div>

                <div class="row">
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">${promotion.name}</h1>
                    </div>
                </div>

                <%@ include file="../fragments/promotionHeader.jsp" %>

                <ul class="nav nav-tabs">
                    <li class="nav-item">
                        <a class="nav-link active" href="/user/promotion/${promotion.id}/info">Opis</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/user/promotion/${promotion.id}/reviews">Recenzje</a>
                    </li>
                </ul>

                <div class="row">

                    <div class="col-lg-6">

                        <!-- Basic Card Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Opis</h6>
                            </div>
                            <div class="card-body">
                                <strong>Kategoria: </strong>${promotion.category}<br/><br/>
                                <strong>Dzień promocji: </strong>${promotion.dayOfWeek}<br/><br/>
                                ${promotion.description}
                            </div>
                        </div>

                    </div>

                    <div class="col-lg-6">

                        <!-- Collapsable Card Example -->
                        <div class="card shadow mb-4">
                            <!-- Card Header - Accordion -->
                            <a href="#collapseCardExample" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="collapseCardExample">
                                <h6 class="m-0 font-weight-bold text-primary">Restauracja</h6>
                            </a>
                            <!-- Card Content - Collapse -->
                            <div class="collapse show" id="collapseCardExample">
                                <div class="card-body">
                                    <strong>Email: </strong> to see the card body collapse and expand!
                                </div>
                            </div>
                        </div>

                    </div>

                </div>

            </div>
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
