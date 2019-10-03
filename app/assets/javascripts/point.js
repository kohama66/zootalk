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
    .done(function(data){
      console.log(data.id);
    })
    .fail(function(){
      console.log("ng");
    })
  })







})
})  