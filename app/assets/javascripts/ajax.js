$(document).ready(function(){


 const showMessage = function(){
   $('#trans-message').html("<span>Congrations on your purchase</span>").show();
   $('#buy').hide();

  };

 const errorHandler= function(){
   $('#trans-message').html("<span>Fail</span>").show();
 };

  $('#buy').click(function () {

    $.ajax(transLink, {
        format: 'json',
        type: "POST"
      }).done(showMessage).fail(errorHandler);

  }); // '#buy').click

}); // document).ready


// $.ajax({
//     type: "GET",
//     url: "/users/5",
//     dataType: "json",
//     success: function(data){
//         alert(data.name) // Will alert Max
//     }
// });
