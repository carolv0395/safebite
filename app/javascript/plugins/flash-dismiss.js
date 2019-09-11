const flashDismiss = function() {
  const flash = document.querySelector('.alert');
  setTimeout(function() {
    flash.style.transition = "all 1s ease-in-out";
    flash.style.opacity = "0";
  }, 1000);
};

const removeFlash = function() {
  const flash = document.querySelector('.alert');
  setTimeout(function() { flash.remove() }, 2000);
};

export { removeFlash };
export { flashDismiss };
