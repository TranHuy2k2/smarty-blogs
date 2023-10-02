{include file="layout/meta.tpl"}
<link rel="stylesheet" href="/assets/css/viewBlog.css">
</head>
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

<body>
    {{include file="layout/navbar.tpl" page=$page}}
    <div class="container">
        <div class="row position-relative animate__animated animate__fadeInDown">
            <div class="col-12 image-container">
                <img src="{$blog->getImage()}" alt="cover" class="img-fluid">
            </div>
        </div>
        <div class="row">
            <div class="content-container animate__backInDown animate__animated">
                <div class="col-12">
                    <h1 class="text-center mt-5">{$blog->getTitle()}</h1>
                </div>
                <div class="col col-6">
                    <p class="info-text"><em>
                            Author: {$blog->getAuthor()->getName()}
                        </em></p>
                    <p class="info-text"><em>
                            Date: {$blog->getCreatedAt()}
                        </em></p>
                </div>
                <div class="content mt-5" id="md-content-{$blog->getId()}"></div>
            </div>

        </div>
    </div>
{{include file="layout/footer.tpl"}}