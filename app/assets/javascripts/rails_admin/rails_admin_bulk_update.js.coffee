jQuery ->
  bulkUpdate = () ->
    $.ajax
#      url: '/admin/offer/bulk_update',
#      type: 'POST',
      dataType: 'html'
      data:
        offers: ''
      success: (data) ->
        $flash = $('<div>')
          .addClass('alert alert-success')
          .append($('<a>').addClass('close').data('dismiss', 'alert').html('&times;'))
          .append($('<span>').addClass('body').html('Удалось успешно обновить предложения'))
          .hide()

        $('.page-header')
          .after($flash)

        $flash.fadeIn(200)
          .delay(6000).fadeOut 200, ->
            $(this).remove()

      error: (xhr, status, e) ->
        alert('Ошибка сохранения!')

  $update_button = $('#rails_admin_bulk_update button')

  $update_button.click ->
    bulkUpdate()
