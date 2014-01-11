# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ()->
  $("form").addClass("form-inline")
  
  $ ->
    $(document).on 'click', 'form .add_fields', (e) ->
      time = new Date().getTime()
      regexp = new RegExp($(this).data('id'), 'g')
      $(this).before($(this).data('fields').replace(regexp, time))
      e.preventDefault()
  
    $(document).on 'click', '.remove-fields', (e) ->
      $(this).prev('input[type=hidden]').val('1')
      $(this).closest('table').hide()
      $(this).closest('th').hide()