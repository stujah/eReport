# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ () ->
  # $(".expense-items").hide()
  $('.expense-report-title').on 'click', (e) ->
    e.stopImmediatePropagation()
    $findExpenseItem = $(this).closest('.collapse-group').find('.expense-items')
    $findExpenseItem.slideToggle()