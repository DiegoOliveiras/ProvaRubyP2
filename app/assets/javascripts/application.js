
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .
//= require bootstrap-datepicker
//= require jquery.inputmask
//= require jquery.inputmask.extensions
//= require jquery.inputmask.numeric.extensions
//= require jquery.inputmask.date.extensions

//= require bootstrap-datepicker
//= require jquery.inputmask
//= require jquery.inputmask.extensions
//= require jquery.inputmask.numeric.extensions
//=require jquery.inputmask.date.extensions

$(document).ready(function(){
  $('.datepicker').datepicker({format: 'dd/mm/yyyy'});
  $('.datepicker2').datepicker({format: 'yyyy-mm-dd'});
  $('#hora').inputmask("99:99");  
  $('.rg').inputmask("99.999.999-9");  
  $('.cpf').inputmask("999.999.999-99");  
  $('.tel').inputmask("(99) 9 9999-9999");  
});
