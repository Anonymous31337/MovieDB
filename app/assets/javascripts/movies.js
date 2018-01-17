

 $('.destroy').on('click', function() {
     
    $.ajax({
     url: $(this).parent().parent().attr('id'),
     type: 'DELETE',
     success: function(r) {

     }
    });
 });