const simplemde = new SimpleMDE({
  element: document.getElementById("md-editor"),
});

$(document).ready(function () {
  $("#submitBtn").click(submitForm);
  $("#clearBtn").click(clearError);
});
function submitForm(e) {
  clearError();
  e.preventDefault();
  const form = $("#createBlogForm");

  const content = simplemde.value();

  const isValidTitle = validateTitle();
  const isValidContent = validateContent(content);
  const isValidImage = validateImage();
  if (!isValidTitle || !isValidContent || !isValidImage) {
    return;
  }

  form.submit();
}

function clearError(e) {
  if (e) {
    e.preventDefault();
  }
  const titleInput = $("#title-input");
  const imageInput = $("#image-input");
  const contentInput = $(".CodeMirror");
  titleInput.removeClass("is-invalid");
  imageInput.removeClass("is-invalid");
  contentInput.removeClass("is-invalid");

  setTimeout(() => {
    titleInput.removeClass("animate__shakeX");
    imageInput.removeClass("animate__shakeX");
    contentInput.removeClass("animate__shakeX");
  }, 1000);
  $("#title-error").text("");
  $("#image-error").text("");
  $("#content-error").text("");
}

function validateTitle() {
  const titleError = $("#title-error");
  const titleInput = $("#title-input");
  const title = titleInput.val();

  if (!title) {
    titleInput.addClass("is-invalid");
    titleInput.addClass("animate__shakeX");
    titleError.text("Title is required");
    return false;
  }
  if (title.length < 5) {
    titleInput.addClass("is-invalid");
    titleInput.addClass("animate__shakeX");
    titleError.text("Title must be at least 5 characters");
    return false;
  }
  setTimeout(() => {
    titleInput.removeClass("animate__shakeX");
  }, 1000);
  titleError.text("");
  return true;
}

function validateContent(content) {
  const contentError = $("#content-error");
  if (!content) {
    $(".CodeMirror").addClass("is-invalid");
    $(".CodeMirror").addClass("animate__shakeX");
    $(".CodeMirror").addClass("animate__animated");
    contentError.text("Content is required");
    return false;
  }
  if (content.length < 5) {
    $(".CodeMirror").addClass("is-invalid");
    $(".CodeMirror").addClass("animate__shakeX");
    $(".CodeMirror").addClass("animate__animated");
    contentError.text("Content must be at least 5 characters");
    return false;
  }
  setTimeout(() => {
    $(".CodeMirror").removeClass("animate__shakeX");
  }, 1000);
  contentError.text("");
  return true;
}

function validateImage() {
  const imageError = $("#image-error");
  const imageInput = $("#image-input");
  const image = imageInput.val();
  if (!image) {
    imageInput.addClass("is-invalid");
    imageInput.addClass("animate__shakeX");
    imageError.text("Image is required");
    return false;
  }
  imageError.text("");
  setTimeout(() => {
    imageInput.removeClass("animate__shakeX");
  }, 1000);
  return true;
}
