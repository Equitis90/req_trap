App.cable.subscriptions.create(
  "RequestChannel",{
  connected: function () {
  },

  disconnected: function () {
  },

  received: function (data) {
    if(data['trap_id'] === $('#trap_id').attr('data-trap-id')) {
      $.ajax({
        url: `/trap/render_request`,
        type: 'GET',
        data: {trap_id: data['trap_id']},
      }).done(function(request_div) {
        $('#container').prepend(request_div);
      });
    }
  }
});
