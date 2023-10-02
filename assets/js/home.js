let isPlaying = false;
window.addEventListener("scroll", function () {
  if (isPlaying) return;
  $(".side-bar").addClass("animate__wobble");

  $(".navbar").addClass("navbar-light");
  $(".navbar").addClass("bg-light");
  $(".navbar").addClass("scroll");
  $(".navbar").removeClass("navbar-dark");

  $(".side-bar").removeClass("animate__bounceIn");
  isPlaying = true;
  setTimeout(function () {
    $(".side-bar").removeClass("animate__wobble");
    isPlaying = false;
  }, 600);
  setTimeout(function () {
    $(".navbar").removeClass("navbar-light");
    $(".navbar").removeClass("scroll");
    $(".navbar").removeClass("bg-light");
    $(".navbar").addClass("navbar-dark");
  }, 1500);
});

function delay(ms) {
  return new Promise((resolve) => {
    setTimeout(resolve, ms);
  });
}

function handleCardEffectOnScroll() {}
