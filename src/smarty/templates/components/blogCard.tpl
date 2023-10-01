<div class="card animate__slideInRight animate__animated">
    <div class="card-body">
        {if $blog->getImage() NE null }
            <div class="blog-image-container">
                <img src="{$blog->getImage()}" class="card-img-top rounded" alt="...">
            </div>
        {/if}
        <h5 class="card-title text-center">{$blog->getTitle()}</h5>
        <p class="card-text">{$blog->getContent()}</p>
        {if $blog->getId() NE null}
            <a href="?controller=Blog&id=${$blog->getId()}" class="btn btn-secondary">Read more</a>
        {/if}
    </div>
</div>