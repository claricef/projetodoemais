window.onload = function() {
  var input = document.getElementById('photo-upload');

  function previewFile() {
    var preview = document.getElementById('photo-upload-label');
    var reader  = new FileReader();

    reader.onloadend = function () {
      preview.style['background-image'] = url('${reader.result}');
      preview.style['background-repeat'] = 'no-repeat';
      preview.style['background-position'] = 'center';
      preview.style['background-size'] = 'cover';
      preview.style['color'] = '#fff';
    }

    if (input) {
      reader.readAsDataURL(input.files[0]);
    }
  }

  input.addEventListener('change', function(){
    previewFile();
  });
};
