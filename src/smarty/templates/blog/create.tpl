{include file="layout/meta.tpl"}
<link rel="stylesheet" href="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.css">
<link rel="stylesheet" href="/assets/css/createBlog.css">
<script src="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.js"></script>
<script defer src="/assets/js/createBlog.js"></script>
</head>

<body>
    {{include file="layout/navbar.tpl" page=$page}}
    <div class="container">
        <div class="row position-relative animate__animated animate__fadeInDown">
            <div class="col-12 image-container">
                <img src="/assets/images/banner.png" alt="cover" class="img-fluid">
            </div>
            <div class="logo-container">
                <img src="/assets/images/zit.jpg" alt="cover" class="logo-top">
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <form id="createBlogForm" class="needs-validation animate__animated animate__zoomIn  animate__fast"
                    method="post" action="?controller=Blog&action=store">
                    <div class="mt-3">
                        <label for="title-input" class="form-label">Title</label>
                        <input name="title" type="text" class="form-control animate__animated" id="title-input">
                        <div id="title-error" class="invalid-feedback"></div>
                    </div>
                    <div class="mt-3">
                        <label for="image-input" class="form-label">Image URL</label>
                        <input name="image" type="text" class="form-control animate__animated" id="image-input">
                        <div id="image-error" class="invalid-feedback"></div>
                    </div>
                    <div class="mt-3">
                        <label for="md-editor" class="form-label">Content</label>
                        <textarea name="content" name="content" id="md-editor"></textarea>
                        <div id="content-error" class="invalid-feedback"></div>
                    </div>
                    <div class="d-flex justify-content-end">
                        <button id="submitBtn" class="btn btn-dark">Create</button>
                        <button id="clearBtn" class="btn btn-secondary ms-2">Clear</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
{{include file="layout/footer.tpl"}}