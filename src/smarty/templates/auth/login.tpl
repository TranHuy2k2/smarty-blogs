{include file="layout/meta.tpl" }
<link rel="stylesheet" href="/assets/css/auth.css">
<script src="/assets/js/login.js"></script>
</head>

<body>
    {{include file="layout/navbar.tpl" page=$page}}
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-sm-8 col-md-6">
                <div class="auth-form-container animate__animated animate__zoomInDown">
                    <div class="auth-form-header">
                        <h1 class="text-center animate__animated">LOGIN</h1>
                        <div class="image-container">
                            <img src="/assets/images/zit.jpg" alt="login">
                        </div>
                    </div>
                    <form id="loginForm" class="needs-validation" method="post" action="?controller=Auth&action=login">
                        <div class="mb-3">
                            <label for="email-input" class="form-label">Email address</label>
                            <input name="email"
                                class="form-control animate__animated {if isset($errors['email'])}is-invalid{/if}"
                                id="email-input" aria-describedby="emailHelp">
                            <div class="invalid-feedback" id="email-error"></div>
                            {if isset($errors['email'])}
                                <div class="invalid-feedback">{$errors['email']}</div>
                            {else}
                                <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                            {/if}
                        </div>
                        <div class="mb-3">
                            <label for="password-input" class="form-label">Password</label>
                            <input name="password" type="password"
                                class="form-control animate__animated {if isset($errors['password'])}is-invalid{/if}"
                                id="password-input">
                            <div class="invalid-feedback" id="password-error"></div>
                            {if isset($errors['password'])}
                            <div class="invalid-feedback">{$errors['password']}</div>
                            {/if}
                        </div>
                        <div class="d-flex justify-content-end">
                            <button id="submitBtn" class="btn btn-dark">Submit</button>
                            <a class="btn btn-light" href="?controller=Auth&action=showRegister">Or register</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
{{include file="layout/footer.tpl"}}