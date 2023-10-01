<nav class="navbar navbar-expand-lg navbar-dark bg-dark animate__animated animate__fadeInDown">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Blogs</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
            aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link {{if $page == 'Home'}} active {{/if}}" aria-current="page"
                        href="?controller=Home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{if $page == 'Auth'}} active {{/if}}" aria-current="page"
                        href="?controller=Auth&action=showLogin">Login/Register</a>
                </li>
        </div>
    </div>
</nav>