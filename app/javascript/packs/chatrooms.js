$(document).on('turbolinks:load', function() {
  $('#message-input').keypress((event) => {
    if (event.which === 13) {
        event.preventDefault();
        $('#message-input').submit();
    }
  });
})

