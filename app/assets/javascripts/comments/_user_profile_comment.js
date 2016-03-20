var user_profile_comment = function(){
  $('.btn').click(function(event){
    var user_profile_id = $('#user_profile_id').val();
    var message         = $('#message').val();

    $.ajax({
      type: "GET",
      dataType: 'script',
      url: "/user_profiles/"+ user_profile_id +"/comments/user_profile_comment?message="+message,
      success: function(data) {
      }
    })
  })
}