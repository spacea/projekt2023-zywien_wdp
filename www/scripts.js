$(document).ready(function(){
  $("#bgchangecolor").change(function(){
      let input = document.getElementById("bgchangecolor");
      var theColor = input.value;
      document.body.style.background = theColor
  });
});  