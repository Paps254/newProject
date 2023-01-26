/*
$(document).ready(function()){
  jQuery methods go here...
this is to prevent any jQuery code from running before the document is finished loading(is ready)

});
*/



/*
$(this).hide() - hides the current element.
$("p").hide() - hides all<p> element.
$(".test").hide() - hide all elements with class = "test"
$("#test").hide() - hides the element with id = "test"

example:
$(document).ready(function(){
    $("button1").click(function(){
        $("#id").hide(2000);
    });
     $("button2").click(function(){
        $("#id").show(2000);
    });
     $("button3").click(function(){
        $("#id").toggle(2000);
    });
});

$("p").toggle(); - hides and comes back on click.
$("p").hide(1000); - hides slowly until ot vanishes
$("p").fadeIn(); - used to fade in a hidden element.
$("p").fadeOut(); - used to fade out a hidden element.
$("p").fadeToggle(); - used to fade in and out a hidden element.
$("p").fadeTo(); - used to fade partially a hidden element.
$("p").slideToggle(); - used to slide in and out a hidden element.
$("p").animate({ left:"250px"}); - used to fade in a hidden element.
$("#p1").css("color", "red").slideUp(2000).slideDown(2000); - is chaininng methods used to run more than one jQuery commands



//DOM manipulation
text() - Sets or returns the text content of selected elements
html() - Sets or returns the content of selected elements (including HTML markup)
val() - Sets or returns the value of form fields

//search
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
    //$("#myList li").filter(function() {//
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});

*/