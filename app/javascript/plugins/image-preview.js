const readURL = function(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    console.log(reader)
    reader.onload = function(e) {
      // $('#meerkat-preview-img').attr('src', e.target.result);
      $('.avatar-large').attr('style', "background-image: url(' " + e.target.result + "')");
    }

    reader.readAsDataURL(input.files[0]);
  }
}

const initImagePreview = function() {
  console.log($("#user_avatar"))
  $("#user_avatar").change(function() {
    readURL(this);
  });
}



export  { initImagePreview };
