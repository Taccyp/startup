$(document).ready(function(){

$("#sidebar").hover(function(){
  console.log("hover detected")
  $(this).animate({width: "60em"}, 800, 
    function(){$("input:text").animate({width: "20em"}, 800)}
    );}, $(this).css({backgroundColor: "white"}),
   function(){
    $(this).animate({width: "20em"}, 800, function(){$("input:text").animate({width: "50px"}, 800)});
  }
)

})