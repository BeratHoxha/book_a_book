# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#owl-demo').owlCarousel
    autoPlay: 3000
    itemsDesktop: [
      1199
      3
    ]
    itemsDesktopSmall: [
      979
      3
    ]
  return

