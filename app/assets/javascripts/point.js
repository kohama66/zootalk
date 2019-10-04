$(document).on('turbolinks:load', function(){
$(function(){

  $(".frends__icon").on("click", function(){
    let group_id = $(".main").data("id");
    console.log(group_id);
    let user_id = $(this).attr("id");
    let point = 1
    $.ajax({
      url: "/points",
      type: "POST",
      dataType: "json",
      data: {
        id: user_id,
        group_id: group_id
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