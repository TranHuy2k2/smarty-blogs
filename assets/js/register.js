$(document).ready(function () {
  const submitBtn = document.getElementById("submitBtn");
  const form = document.getElementById("loginForm");
  const emailInput = document.getElementById("email-input");
  const emailError = document.getElementById("email-error");
  const emailHelp = document.getElementById("emailHelp");

  const nameInput = document.getElementById("name-input");
  const nameError = document.getElementById("name-error");

  const passwordInput = document.getElementById("password-input");
  const passwordError = document.getElementById("password-error");

  const rePasswordInput = document.getElementById("re-password-input");
  const rePasswordError = document.getElementById("re-password-error");

  const header = document.querySelector(".auth-form-header h1");
  header.classList.add("d-none");
  setTimeout(() => {
    header.classList.add("animate__fadeInDown");
    header.classList.remove("d-none");
  }, 1000);

  submitBtn.addEventListener("click", (e) => {
    e.preventDefault();
    const email = emailInput.value;
    const password = passwordInput.value;
    const name = nameInput.value;
    const rePassword = rePasswordInput.value;
    console.log(email, password, name, rePassword);
    isError = false;
    // Validate email regexp
    if (!isValidEmail(email)) {
      emailError.innerHTML = "Email is invalid!";
      emailInput.classList.add("is-invalid");
      emailInput.classList.add("animate__shakeX");
      emailHelp.classList.add("d-none");
      isError = true;
      setTimeout(() => {
        emailInput.classList.remove("animate__shakeX");
      }, 1000);
    }
    // Validate name
    if (!name) {
      nameError.innerHTML = "Name is invalid!";
      nameInput.classList.add("is-invalid");
      nameInput.classList.add("animate__shakeX");
      isError = true;
      setTimeout(() => {
        nameInput.classList.remove("animate__shakeX");
      }, 1000);
    }
    // Validate Re-password
    if (!isValidRePassword(password, rePassword)) {
      rePasswordError.innerHTML = "Password does not match!";
      rePasswordInput.classList.add("is-invalid");
      rePasswordInput.classList.add("animate__shakeX");
      isError = true;
      setTimeout(() => {
        rePasswordInput.classList.remove("animate__shakeX");
      }, 1000);
    }
    if (!isValidPassword(password)) {
      // Validate password length
      passwordError.innerHTML = "Password must be at least 8 characters!";
      passwordInput.classList.add("is-invalid");
      passwordInput.classList.add("animate__shakeX");
      isError = true;
      setTimeout(() => {
        passwordInput.classList.remove("animate__shakeX");
      }, 1000);
    }
    if (isError) {
      return;
    }

    form.submit();
  });
});

function isValidEmail(email) {
  var pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  return pattern.test(email);
}

function isValidPassword(password) {
  console.log(password.length);
  return password && password.length >= 8;
}
function isValidRePassword(password, rePassword) {
  return password === rePassword;
}
