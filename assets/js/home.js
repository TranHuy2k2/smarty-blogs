$(document).ready(function () {
  setTimeout(() => {
    $("#scrollToNext").removeClass("d-none");
    $("#scrollToNext").addClass("animate__animated animate__bounceInDown");
  }, 1500);
  blogs = $(".blog-card");

  function animateCard(index) {
    if (index > blogs.length) {
      return;
    }
    setTimeout(() => {
      animateCard(index + 1);
    }, 400);
    $(blogs[index]).removeClass("d-none");
    $(blogs[index]).addClass("animate__lightSpeedInRight");
  }
  animateCard(-1);
  const blogCards = document.querySelectorAll(".blog-card");
  const scrollToNextButton = document.getElementById("scrollToNext");
  console.log(scrollToNextButton);

  // Initialize an index to track the current card
  let currentCardIndex = 0;

  // Function to scroll to the next card smoothly
  function scrollToNextCard() {
    currentCardIndex = (currentCardIndex + 1) % blogCards.length;
    blogCards[currentCardIndex].scrollIntoView({ behavior: "smooth" });
  }

  // Add a click event listener to the button
  scrollToNextButton.addEventListener("click", scrollToNextCard);
});

let isPlaying = false;
window.addEventListener("scroll", function () {
  if (isPlaying) return;
  $(".side-bar").addClass("animate__headShake");

  $(".navbar").addClass("navbar-light");
  $(".navbar").addClass("bg-light");
  $(".navbar").addClass("scroll");
  $(".navbar").removeClass("navbar-dark");

  $(".side-bar").removeClass("animate__bounceIn");
  isPlaying = true;
  setTimeout(function () {
    $(".side-bar").removeClass("animate__headShake");
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
