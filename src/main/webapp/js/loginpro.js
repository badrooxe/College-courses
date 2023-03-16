/**
 * 
 */
$(document).ready(function(){

    $(".inp").blur(function () {
        if ($(this).is(":invalid")) {
           $('.field').addClass("error")
        }
      });

      $(".inp").blur(function () {
        if ($(this).is(":valid")) {
           $('.field').removeClass("error")
        }
      });
      
  
  });