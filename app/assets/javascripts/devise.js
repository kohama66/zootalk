$(function(){
  
  $('#1').on('click', function(e){
    e.preventDefault();
    $(".popup1").addClass("show");
  })
  $('#2').on('click', function(e){
    e.preventDefault();
    $(".popup2").addClass("show");
  })    
  $('#3').on('click', function(e){
    e.preventDefault();
    $(".popup3").addClass("show");
  })
  $('#4').on('click', function(e){
    e.preventDefault();
    $(".popup4").addClass("show");
  })    
  $('#5').on('click', function(e){
    e.preventDefault();
    $(".popup5").addClass("show");
  })      
  
  $('.card-action').on('click', function(){
    $(".popup1").removeClass("show");
    $(".popup2").removeClass("show");
    $(".popup3").removeClass("show");
    $(".popup4").removeClass("show");
    $(".popup5").removeClass("show");
    })
})