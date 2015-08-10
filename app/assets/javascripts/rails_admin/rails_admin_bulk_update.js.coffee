window.$flash = $('<div>')
  .addClass('alert')
  .append($('<a>').addClass('close').data('dismiss', 'alert').html('&times;'))
  .hide()

window.bulkUpdateflashEvent = ->
  $('.page-header')
    .after(window.$flash)

  window.$flash
    .fadeIn(200)
    .delay(6000).fadeOut 200, ->
      $(this).remove()