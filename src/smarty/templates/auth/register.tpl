{include file="layout/meta.tpl" }
<link rel="stylesheet" href="/assets/css/auth.css">
<script defer src="/assets/js/register.js"></script>
</head>

<body>
    {{include file="layout/navbar.tpl" page=$page}}
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-sm-8 col-md-6">
                <div class="auth-form-container animate__animated animate__zoomInDown">
                    <div class="auth-form-header">
                        <h1 class="text-center  animate__animated">Register</h1>
                        <div class="image-container">
                            <img src="/assets/images/zit.jpg" alt="logo">
                        </div>
                    </div>
                    <form id="registerForm" method="post" action="/?controller=Auth&action=register">
                        <div class="mb-3">
                            <label for="email-input" class="form-label">Email address</label>
                            <input name="email" type="email" class="form-control animate__animated" id="email-input"
                                aria-describedby="emailHelp">
                            <div id="email-error" class="invalid-feedback"></div>
                            <div id="emailHelp" class="form-text">We'll never share your email with anyone else.
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="email-input" class="form-label">Name</label>
                            <input name="name" class="form-control animate__animated" id="name-input">
                            <div id="name-error" class="invalid-feedback"></div>
                        </div>
                        <div class="mb-3">
                            <label for="password-input" class="form-label">Password</label>
                            <input name="password" type="password" class="form-control animate__animated"
                                id="password-input">
                            <div id="password-error" class="invalid-feedback"></div>
                        </div>
                        <div class="mb-3">
                            <label for="re-password-input" class="form-label">Re-Password</label>
                            <input name="re-password" type="password" class="form-control animate__animated"
                                id="re-password-input">
                            <div id="re-password-error" class="invalid-feedback"></div>


                        </div>
                        <div class="d-flex justify-content-end">
                            <button id="submitBtn" type="submit" class="btn btn-dark">Submit</button>
                            <a class="btn btn-light" href="?controller=Auth&action=showLogin">Or login</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
{{include file="layout/footer.tpl"}}