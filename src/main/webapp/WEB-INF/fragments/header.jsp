<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarProfile" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Mój Profil
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Profil</a>
                    <a class="dropdown-item" href="#">Zaproponuj</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Wyloguj</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Link</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Promocje
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="/search/">Wyszukaj</a>
                    <a class="dropdown-item" href="#">Ulubione</a>
                    <a class="dropdown-item" href="#">Zaproponuj</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Something else here</a>
                </div>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="#">O Aplikacji<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="#">Kontakt<span class="sr-only">(current)</span></a>
            </li>
            <%--                <li class="nav-item">--%>
            <%--                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>--%>
            <%--                </li>--%>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>