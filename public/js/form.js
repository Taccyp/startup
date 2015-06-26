$(document).ready(function(){

$("#sidebar").hover(function(){
  $(this).stop().animate({width: "60em", height: "60em"}, 300, 
    function(){$("input:text").stop().animate({width: "20em"}, 300, 
      function(){$("input[type=email]").stop().animate({width: "20em"}, 300,
      function(){$("textarea").stop().animate({height: "5em", width: "40em"})})})}
    );},
   function(){
    $(this).stop().animate({width: "10em", height: "720px"}, 200, function(){$("input:text").stop().animate({width: "50px"}, 200,
      function(){$("input[type=email]").stop().animate({width: "50px"}, 200,
        function(){$("textarea").stop().animate({height: "26px", width: "50px"})})})});
  }
)

})