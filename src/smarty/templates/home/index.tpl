{{include file="layout/meta.tpl" }}
<link rel="stylesheet" href="/assets/css/home.css">
<script src="/assets/js/home.js"></script>
</head>


<body>
  {{include file="layout/navbar.tpl" page=$page}}

  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-sm-6 col-md-3">
        {{include file="layout/sidebar.tpl"}}
      </div>
      <div class="col-12 col-sm-6 col-md-9">
        {foreach from=$blogs item=blog}
          {include file="components/blogCard.tpl" blog=$blog}
        {/foreach}
      </div>
    </div>
  </div>
{{include file="layout/footer.tpl"}}