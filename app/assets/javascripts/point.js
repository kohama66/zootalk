$(document).on('turbolinks:load', function(){
$(function(){

  $(".frends__icon").on("click", function(){
    let user_id = $(this).attr("id");
    let point = 1
    $.ajax({
      url: "/users/edit",
      post: "GET",
      dataType: "json",
      data: { 
        id: user_id, 
        point: point
        }
    })
    .done(function(data){
      console.log(data);
    })
    .fail(function(){
      console.log("ng");
    })
  })







})
})  