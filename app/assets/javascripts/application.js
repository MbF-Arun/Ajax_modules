// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .



// function myFunction() {
//     // Declare variables
//     var input, filter, ul, li, h2, i;
//     input = document.getElementById('myInput');
//     filter = input.value.toUpperCase();
//     ul = document.getElementById("myUL");
//     li = ul.getElementsByTagName('li');

//     // Loop through all list items, and hide those who don't match the search query
//     for (i = 0; i < li.length; i++) {
//         h2 = li[i].getElementsByTagName("h2")[0];
//         if (h2.innerHTML.toUpperCase().indexOf(filter) > -1) {
//             li[i].style.display = "";
//         } else {
//             li[i].style.display = "none";
//         }
//     }



// function myFunction() {
// 	alert();
//     // Declare variables
//     var input, filter, ul, li, h2, i;
//     input = document.getElementById('myInput');
//     filter = input.value.toUpperCase();
//     ul = document.getElementById("myUL");
//     li = ul.getElementsByTagName('li');

//     // Loop through all list items, and hide those who don't match the search query
//     for (i = 0; i < li.length; i++) {
//         li = li[i].getElementsByTagName("li")[0];
//         if (h2.innerHTML.toUpperCase().indexOf(filter) > -1) {
//             li[i].style.display = "";
//         } else {
//             li[i].style.display = "none";
//         }
//     }
// }
$(document).on('click keyup ', '.input-item', function() {
    var x = 0;
    var input = $(this).val();

    if (input == "") {
        x++;
       $(this).siblings().addClass('.error-row').css('display', 'block').text("Enter the value").slideDown();
    } else { $(this).siblings().removeClass('.error-row').hide(); }
    if (x >= 1) { return false; }
});
$(document).on('click keyup ', '#menuid', function dropdwn() {
	var x = 0;
	var dropdwn
 	dropdwn = $(this).val();
 
 if (dropdwn == ""){
 	x++ ;
 	$(this).siblings('.error-row').css('display', 'block').text("Enter the value").slideDown();
 	
 }
 else
 {
 	$(this).siblings('.error-row').css('display', 'block').text("Enter the value").slideDown().hide();
 }
 if(x>=1){return false;}
});