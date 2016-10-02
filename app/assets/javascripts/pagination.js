$(document).ready(function()
{
  $('#next_btn').click(function (next) {
 
     next.preventDefault();
     window.location=$('li.active').next("li").find("a").attr('href');
   
  });
  $('#previous_btn').click(function (previous) {
 
     previous.preventDefault();
     window.location=$('li.active').prev("li").find("a").attr('href');
   
  });
});