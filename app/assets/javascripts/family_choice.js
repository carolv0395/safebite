document.querySelector()

(document).ready(function(){
  (".family-choice").click(function(){
    (this).toggleClass("active");
  });
  (".family-choice img").click(function(){
    (this).hidden = true;
  });
});
