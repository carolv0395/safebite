const flashDismiss = function() {
  const flash = document.querySelector('.alert');

  if(flash) {
    setTimeout(function() {
      flash.style.transition = "all 1s ease-in-out";
      flash.style.opacity = "0";
    }, 2000);
  }

};

const removeFlash = function() {
  const flash = document.querySelector('.alert');
  if(flash) {
    setTimeout(function() { flash.remove() }, 3000);
  }
};

export { removeFlash, flashDismiss };
