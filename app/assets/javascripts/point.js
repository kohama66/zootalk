$(document).on('turbolinks:load', function(){
$(function(){

  $(".frends__icon").on("click", function(){
    let user_id = $(this).attr("id");
    let url = location.href
    $.ajax({
      url: url,
      post: "get",
      dataType: "json",
      data: { id: user_id }
    })
    .done(function(){
      console.log("ok");
    })
    .fail(function(){
      console.log("ng");
    })
  })







})
})  