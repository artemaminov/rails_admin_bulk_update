window.$flash = $('<div>')
  .addClass('alert-danger')
  .append($('<span>').addClass('body').html('Не удалось обновить спецпредложения'))

window.bulkUpdateflashEvent()
