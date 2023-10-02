{{include file="layout/meta.tpl" }}
<link rel="stylesheet" href="/assets/css/home.css">
<script src="/assets/js/home.js"></script>
</head>

<script>
  $(document).ready(function() {
    blogs = $('.blog-card');

    function animateCard(index) {
      if (index > blogs.length) {
        return;
      }
      setTimeout(() => {
        animateCard(index + 1);
      }, 400);
      $(blogs[index]).removeClass('d-none');
      $(blogs[index]).addClass('animate__lightSpeedInRight');

    }
    animateCard(-1);
  });
</script>

<body>
  {{include file="layout/navbar.tpl" page=$page}}

  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-sm-12 col-md-5 col-lg-3">
        {{include file="layout/sidebar.tpl"}}
      </div>
      <div class="col-12 col-sm-12 col-md-7 col-lg-9">
        {foreach from=$blogs item=blog}
          {include file="components/blogCard.tpl" blog=$blog}
        {/foreach}
      </div>
    </div>
  </div>
{{include file="layout/footer.tpl"}}