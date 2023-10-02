<div class="card p-3  side-bar animate__animated animate__bounceIn">
    <div class="card-body">
        <h5 class="card-title text-center fst-italic">Welcome,
            {if isset($user)}
                {$user["name"]}
            {else}
                Guest
            {/if}
        </h5>
        <div class="d-flex justify-content-center">
            <a href="?controller=Blog&action=showCreate" class="btn btn-secondary create-blog-btn">Create a blog</a>
        </div>
        <div class="author d-flex justify-content-center flex-wrap">
            <div class="image-container w-100 mt-3 shadow-lg">
                <img class="w-100 rounded" src="/assets/images/db-index.jpg" alt="blog1">
            </div>

            <div class="image-container w-100 mt-3">
                <img class="w-100 rounded" src="/assets/images/tokenJWT.jpg" alt="blog3">
            </div>
            <div class="credit d-flex justify-content-center flex-wrap mt-4">
                <p class="text-center">
                    <strong>Author:</strong> Github@TranHuy2k2
                </p>
                <div class="ms-2">
                    <i class="fa-brands fa-github author-icon"></i>
                    <i class="fa-brands fa-linkedin author-icon"></i>
                </div>
            </div>
        </div>
    </div>

</div>