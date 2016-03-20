var post_comment = function(){
  $('.btn').click(function(event){
    var post_id = $('#post_id').val();
    var message = $('#message').val();

    $.ajax({
      type: "GET",
      dataType: 'script',
      url: "/posts/"+ post_id +"/comments/post_comment?message="+message,
      success: function(data) {
      }
    })
  })
}