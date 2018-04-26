$(document).ready(function () {
    $('#sidebarCollapse').on('click', function () {
        $('#sidebar').toggleClass('active');
        $(this).toggleClass('active');
    });
});

$('#btn-suivant').click(function () {
  console.log("olllol");
  $('.block-one').css("display", "none");
  $('.block-two').css("display", "block");
});
$('#btn-retour').click(function () {
  $('.block-one').css("display", "block");
  $('.block-two').css("display", "none");
});






/*----------------------------------------------------------------------------*/


//Add event listener
document.getElementById("getPdf").addEventListener("click", getSnap);


function getSnap() {
  var nameFiles = $('#name-files').val();
  var date = new Date();
  html2canvas(document.getElementById("content"), {
    onrendered: function(canvas) {
      var imgData = canvas.toDataURL('image/png', 1.0);
      var doc = new jsPDF('p', 'pt', 'a4');
      doc.addImage(imgData, 'JPEG', 10, 100, 600, 600);
      doc.save('fiche-entretien-' + nameFiles + date + '.pdf');
    }
  });
}
