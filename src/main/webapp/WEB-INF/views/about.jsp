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

                                <!-- Page Heading -->
                                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                                    <h1 class="h3 mb-0 text-gray-800">O Aplikacji</h1>
                                </div>

                <!-- Content Row -->

                    <div class="row">

                        <!-- Basic Card Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Opis</h6>
                            </div>
                            <div class="card-body">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ac finibus tortor, quis congue sem. Curabitur gravida rhoncus sapien, non maximus mauris blandit at. Nullam dignissim nisl eleifend cursus fermentum. Donec faucibus varius dolor eget tempor. Mauris molestie rutrum mi. Vestibulum ultrices in elit in porttitor. Sed dictum nunc turpis, sed dignissim nulla scelerisque vel. Aliquam erat volutpat. Suspendisse blandit nulla eget suscipit ornare. Maecenas imperdiet, dolor vel aliquet aliquet, nibh diam egestas sapien, nec lobortis dolor metus non diam. Phasellus hendrerit leo nec finibus malesuada. Nunc egestas tempor finibus. Cras maximus finibus odio non laoreet.

                                Suspendisse potenti. Pellentesque ultricies orci est, sed auctor erat rutrum id. Nullam tempus quam ac commodo porta. Nunc sed scelerisque quam. Vestibulum imperdiet malesuada lobortis. Vivamus suscipit eleifend elit, vitae luctus dui aliquet sit amet. Aliquam elementum tortor in efficitur dapibus. Maecenas nec finibus nisl, et venenatis lorem. Praesent id faucibus augue. Quisque quis mauris dolor. Mauris molestie enim arcu, non aliquet quam rutrum quis. Donec tempor mauris ut quam ornare tempus non et erat. Nam interdum placerat ante a finibus. Donec luctus est id mauris bibendum, et vestibulum nibh interdum. Curabitur luctus ultrices elit vitae luctus.

                                Nam vel dapibus justo, eu euismod augue. Phasellus nisl elit, porttitor vestibulum sollicitudin vitae, eleifend eget nibh. Suspendisse ac molestie mauris, eu dictum urna. Praesent ac mattis velit. Suspendisse potenti. Quisque quis vehicula metus, et accumsan metus. Nullam hendrerit elit eget est mollis, eu lobortis dolor semper. Nullam ac ante velit. Quisque ac elit vel neque blandit egestas. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean at libero finibus, varius arcu in, euismod sapien. Nam tincidunt orci nulla, vitae auctor massa varius non. Etiam vel metus at risus viverra convallis. Nullam id odio in diam commodo ultricies at id mi.

                                Curabitur ultrices nisl at nulla semper feugiat. Praesent ut lectus est. Vestibulum vitae euismod tellus. In hac habitasse platea dictumst. In hac habitasse platea dictumst. Aliquam vehicula ipsum mattis lacinia sollicitudin. Vestibulum suscipit dapibus dolor a vulputate. Phasellus feugiat nisl in felis interdum scelerisque ut sed odio. Donec gravida pulvinar dui vestibulum sollicitudin. Praesent venenatis, lectus id sagittis suscipit, ante arcu fermentum turpis, in commodo purus risus id justo.
                            </div>
                        </div>

                    </div>
            </div>

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
