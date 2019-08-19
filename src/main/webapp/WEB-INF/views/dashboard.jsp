<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CheapEat</title>
    <%@ include file="./fragments/head.jsp" %>
</head>
<body>
    <%@ include file="./fragments/headerUser.jsp" %>

    <section class="padding-large bg-light">
        <div id="carouselExampleControls" class="carousel slide main-slider" data-ride="carousel">
            <div class="carousel-inner container">
                <div class="carousel-item active">
                    <div class="container w-75 d-flex">
                        <div class="carousel-caption d-block">
                            <h1>Lorem ipsum dolor sit amet</h1>
                            <h3> consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                                magna aliqua.</h3>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="container w-75 d-flex">
                        <div class="carousel-caption d-block">
                            <h1>Torem ipsum dolor sit amet</h1>
                            <h3> consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                                magna aliqua.</h3>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="container w-75 d-flex">
                        <div class="carousel-caption d-block">
                            <h1>Borem ipsum dolor sit amet</h1>
                            <h3> consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                                magna aliqua.</h3>
                        </div>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </section>

    <%@ include file="./fragments/jsCode.jsp" %>
</body>
</html>
