{assign var="mdRaw" value={$blog->getContent()}}
<script defer>
    $(document).ready(function() {
        var mdRaw = `{$mdRaw}`;
        const id = `{$blog->getId()}`;
        const mdContent = document.getElementById('md-content' + '-' + id);
        const md = window.markdownit();
        mdContent.innerHTML = md.render(mdRaw);
    });
</script>
<div class="card animate__animated blog-card d-none mb-5 shadow">
    <div class="card-body">
        <div class="blog-image-container">
            <img src="{$blog->getImage()}" class="card-img-top rounded" alt="...">
        </div>
        <div class="info-container d-flex align-items-end flex-wrap flex-column">
            <p class="info-text"><em>
                    Author: {$blog->getAuthor()->getName()}
                </em></p>
            <p class="info-text"><em>
                    Date: {$blog->getCreatedAt()}
                </em></p>
        </div>
        <p id="md-content-{$blog->getId()}" class="card-text"></p>
        <div class="d-flex justify-content-end">
            <a href="?controller=Blog&id={$blog->getId()}" class="btn btn-secondary">Read more</a>
        </div>
    </div>
</div>