App.cable.subscriptions.create(
  "RequestChannel",{
  connected: function () {
  },

  disconnected: function () {
  },

  received: function (data) {
    if(data['trap_id'] === $('#trap_id').attr('data-trap-id')) {
      $('#container').prepend(data['req']);
    }
  }
});
