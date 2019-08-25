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
                        <a class="nav-link" href="/user/promotion/${promotion.id}/info">Opis</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="/user/promotion/${promotion.id}/reviews">Recenzje</a>
                    </li>
                </ul>

                <div class="form-group blue-border">
                    <c:choose>
                        <c:when test="${addedReview == false}">
                            <form:form method="post" modelAttribute="review">
                                <label for="reviewId"></label>
                                <form:textarea path="content" id="reviewId" class="form-control" rows="3" cols="10" placeholder="Treść recenzji (maksymalnie 200 znaków)"/>
                                <form:errors path="content" element="div"/>

                                <form:select class="mdb-select md-form colorful-select dropdown-primary" path="note">
                                    <c:forEach var="number" begin="1" end="5">
                                        <form:option value="${number}"/>
                                    </c:forEach>
                                </form:select>
                                <label class="mdb-main-label">Oceń</label>
<%--                                <input type="submit" value="Wystaw recenzję" class="btn btn-primary btn-icon-split">--%>
                                <button type="submit" class="btn btn-primary">Wystaw recenzję</button>
                            </form:form>
                        </c:when>
                        <c:otherwise>
                            <div class="card shadow mb-4">

                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-bordered" id="dataTable2" width="100%" cellspacing="0">
                                            <thead>
                                                <tr>
                                                    <th colspan="4">Twoja recenzja</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>${userReview.username}</td>
                                                    <td>${userReview.content}</td>
                                                    <td>${userReview.note}</td>
                                                    <td>${userReview.created}</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </c:otherwise>
                    </c:choose>
                </div>

                <div class="card shadow mb-4">

                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    <th>Użytkownik</th>
                                    <th>Treść recenzji</th>
                                    <th>Ocena</th>
                                    <th>Data</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="review" items="${promotion.reviews}">
                                    <tr>
                                        <td>${review.username}</td>
                                        <td>${review.content}</td>
                                        <td>${review.note}</td>
                                        <td>${review.created}</td>
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
