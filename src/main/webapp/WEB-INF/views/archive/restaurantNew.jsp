<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
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

                <div class="row">

                    <!-- Liczba subskrypcji -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Liczba subskrypcji</div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">${promotion.subscription}</div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Cena promocji -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-success shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Cena</div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">${promotion.price} zł</div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Ocena promocji -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-info shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Ocena</div>
                                        <div class="row no-gutters align-items-center">
                                            <div class="col-auto">
                                                <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">${promotion.averageNote}</div>
                                            </div>
                                            <div class="col">
                                                <div class="progress progress-sm mr-2">
                                                    <div class="progress-bar bg-info" role="progressbar" style="width: ${promotion.averageNote / 5 *100}%" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Liczba recenzji -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-warning shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Recenzje</div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">${promotion.reviews.size()}</div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-comments fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <ul class="nav nav-tabs">
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Active</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#">Disabled</a>
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

                <div class="form-group blue-border">
                    <c:if test = "${addedReview == false}">
                        <form:form method="post" modelAttribute="review">
                            <label for="reviewId">Recenzje:</label>
                            <form:textarea path="content" id="reviewId" class="form-control" rows="3" cols="10"/>
                            <form:errors path="content" element="div"/>
                            <form:select class="mdb-select md-form colorful-select dropdown-primary" path="note">
                                <c:forEach var="number" begin="1" end="5">
                                    <form:option value="${number}"/>
                                </c:forEach>
                            </form:select>
                            <label class="mdb-main-label">Oceń</label>
                            <input type="submit" value="Wystaw recenzję" class="btn btn-primary btn-icon-split">

                            <%--                            <a type="submit" class="btn btn-primary btn-icon-split">--%>
                            <%--                                <span class="icon text-white-50">--%>
                            <%--                                  <i class="fas fa-flag"></i>--%>
                            <%--                                </span>--%>
                            <%--                                <span class="text">Wystaw recenzję</span>--%>
                            <%--                            </a>--%>
                        </form:form>
                    </c:if>
                </div>


                <table>
                    <div class="row">
                        <div class="d-sm-flex align-items-center justify-content-between mb-4">
                            <h1 class="h3 mb-0 text-gray-800">Recenzje</h1>
                        </div>
                    </div>
                    <c:forEach var="review" items="${promotion.reviews}">
                        <tr>
                            <div class="card shadow mb-4">
                                <!-- Card Header - Accordion -->
                                <a href="#reviewId" class="d-block card-header py-3 collapsed" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="reviewId">
                                    <h6 class="m-0 font-weight-bold text-primary">${review.username} -----  ocena: ${review.note}</h6>
                                </a>
                                <!-- Card Content - Collapse -->
                                <div class="collapse show" id="reviewId">
                                    <div class="card-body">
                                        <strong>Treść recenzji:</strong><br/><br/>
                                            ${review.content}
                                    </div>
                                </div>
                            </div>
                        </tr>
                    </c:forEach>
                </table>

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
