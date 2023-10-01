let isPlaying = false;
var lastScrollTop = 0;
window.addEventListener("scroll", function () {
  if (isPlaying) return;
  const st = window.pageYOffset || document.documentElement.scrollTop;
  if (st > lastScrollTop) {
    $(".side-bar").addClass("animate__bounceInUp");
  } else {
    $(".side-bar").addClass("animate__bounceInDown");
  }
  $(".side-bar").removeClass("animate__bounceIn");
  isPlaying = true;
  lastScrollTop = st <= 0 ? 0 : st;
  setTimeout(function () {
    $(".side-bar").removeClass("animate__bounceInDown");
    $(".side-bar").removeClass("animate__bounceInUp");
    isPlaying = false;
  }, 5000);
});
