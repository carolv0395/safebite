const buttons = document.querySelectorAll(".family-choice");
const icons = document.querySelectorAll(".hidden-icons");
const checkboxes = document.querySelectorAll('input[type="checkbox"]')

buttons.forEach((button) => {
  const index = button.classList[1];
  if (checkboxes[index].checked == true) {
    button.classList.add("active");
    icons[index].classList.remove('hidden-icons');
  } else {
    button.classList.remove("active");
    icons[index].classList.add('hidden-icons');
  }
  button.addEventListener("click", function() {
    button.classList.toggle("active");
    const index = button.classList[1];
    icons[index].classList.toggle('hidden-icons');
  });
});
