<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/admin/dashboard">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-feather-alt"></i>
        </div>
        <div class="sidebar-brand-text mx-3">CheapEat</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="/admin/dashboard">
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
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseRest" aria-expanded="true" aria-controls="collapseRest">
            <i class="fas fa-concierge-bell"></i>
            <span>Restauracja</span>
        </a>
        <div id="collapseRest" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="/admin/restaurant/add/user">Dodaj</a>
<%--                <a class="collapse-item" href="/restaurateur/restaurant/edit">Edytuj profil</a>--%>
            </div>
        </div>
    </li>

<%--    <li class="nav-item">--%>
<%--        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePro" aria-expanded="true" aria-controls="collapsePro">--%>
<%--            <i class="fas fa-percent"></i>--%>
<%--            <span>Promocje</span>--%>
<%--        </a>--%>
<%--        <div id="collapsePro" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">--%>
<%--            <div class="bg-white py-2 collapse-inner rounded">--%>
<%--                <a class="collapse-item" href="/restaurateur/promotion/list">Wszystkie promocje</a>--%>
<%--                <a class="collapse-item" href="/restaurateur/promotion/add">Dodaj promocje</a>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </li>--%>


    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>
<!-- End of Sidebar -->