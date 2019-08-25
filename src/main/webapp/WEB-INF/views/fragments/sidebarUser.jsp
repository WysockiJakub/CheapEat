<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/user/dashboard">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-feather-alt"></i>
        </div>
        <div class="sidebar-brand-text mx-3">CheapEat</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="/user/dashboard">
            <i class="fas fa-home"></i>
            <span>Strona główna</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Interfejs
    </div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePro" aria-expanded="true" aria-controls="collapsePro">
            <i class="fas fa-percent"></i>
           <span>Promocje</span>
        </a>
        <div id="collapsePro" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="/user/search/promotion">Wyszukaj</a>
<%--                <a class="collapse-item" href="/user/car/all">Car List</a>--%>
            </div>
        </div>
    </li>

    <!-- Nav Item - Utilities Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
            <i class="fas fa-concierge-bell"></i>
            <span>Restauracje</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="/user/search/restaurant">Wyszukaj</a>
<%--                <a class="collapse-item" href="utilities-color.html">Order All</a>--%>
<%--                <a class="collapse-item" href="utilities-border.html">Order Save</a>--%>
<%--                <a class="collapse-item" href="utilities-animation.html">Order Finish</a>--%>
            </div>
        </div>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Ulubione
    </div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
            <i class="fas fa-heart"></i>
            <span>Ulubione</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Moje:</h6>
                <a class="collapse-item" href="/user/promotion/favourite/all">Wszystkie</a>
                <a class="collapse-item" href="/user/promotion/favourite/today">Dzisiaj</a>
                <div class="collapse-divider"></div>
                <h6 class="collapse-header">Według:</h6>
                <a class="collapse-item" href="/user/promotion/favourite/day">Dnia</a>
                <a class="collapse-item" href="/user/promotion/favourite/category">Kategorii</a>

            </div>
        </div>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <li class="nav-item">
        <a class="nav-link" href="/user/about">
            <i class="fas fa-fw fa-table"></i>
            <span>O aplikacji</span></a>
    </li>

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>
<!-- End of Sidebar -->