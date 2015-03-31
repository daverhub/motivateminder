//= require jquery-ui/datepicker
//= require jquery.timepicker.js

$(function() {
  $('.datepicker').datepicker({ dateFormat: 'dd-mm-yy' }).val();
  $('.timepicker').timepicker();;
});
