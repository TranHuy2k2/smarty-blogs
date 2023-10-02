<nav class="navbar navbar-expand-lg navbar-dark animate__animated animate__fadeInDown">
    <div class="container-fluid">
        <a class="navbar-brand" href="?controller=Home">Blogs</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
            aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav navbar-nav-scroll">
                <li class="nav-item">
                    <a class="nav-link {{if $page == 'Home'}} active {{/if}}" aria-current="page"
                        href="?controller=Home">Home</a>
                </li>
                {if !isset($user)}
                    <li class="nav-item">
                        <a class="nav-link {{if $page == 'Auth'}} active {{/if}}" aria-current="page"
                            href="?controller=Auth&action=showLogin">Login/Register</a>
                    </li>
                {else}
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="?controller=Auth&action=logOut">Logout</a>
                    </li>
                {/if}
        </div>
    </div>
</nav>