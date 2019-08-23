<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>CheapEat- Login</title>

    <%@ include file="./fragments/head.jsp" %>

</head>

<body class="bg-gradient-primary">

<div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

        <div class="col-xl-10 col-lg-12 col-md-9">

            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                        <div class="col-lg-6">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                                </div>

                                <form class="user" method="POST" action="${contextPath}/login">
                                    <div class="form-group ${error != null ? 'has-error' : ''}">
                                        <div class="form-group">
                                            <input name="username" type="text" class="form-control form-control-user" placeholder="Enter Username...">
                                        </div>
                                        <span>${message}</span>
                                        <div class="form-group">
                                            <input name="password" type="password" class="form-control form-control-user" placeholder="Password">
                                        </div>
                                        <span>${error}</span>
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
<%--                                        <div class="form-group">--%>
<%--                                            <div class="custom-control custom-checkbox small">--%>
<%--                                                <input type="checkbox" class="custom-control-input" id="customCheck">--%>
<%--                                                <label class="custom-control-label" for="customCheck">Remember Me</label>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
                                        <button class="btn btn-primary btn-user btn-block" type="submit">Log In</button>
<%--                                        <a href="index.html" class="btn btn-primary btn-user btn-block">--%>
<%--                                            Login--%>
<%--                                        </a>--%>
                                    </div>
                                </form>
                                <hr>
                                <div class="text-center">
                                    <a class="small" href="forgot-password.html">Forgot Password?</a>
                                </div>
                                <div class="text-center">
                                    <h4 class="text-center"><a href="${contextPath}/registration">Create an account</a></h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="./fragments/jsCode.jsp" %>

</body>

</html>
