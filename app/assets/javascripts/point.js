$(document).on('turbolinks:load', function(){
$(function(){

  $(".frends__icon").on("click", function(){
    let user_id = $(this).attr("id");
    let point = 1
    $.ajax({
      url: "/points",
      type: "POST",
      dataType: "json",
      data: {
        id: user_id
      }
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