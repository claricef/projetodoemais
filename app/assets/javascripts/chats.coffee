speak: (message) ->
  @perform 'speak', message: message

 received: (data) ->
  $('#messages').append data['message']

 $(document).on 'keypress', '[data-behavior~=chat_speaker]', (event) ->
  if event.keyCode is 13 # return = send
    App.chat.speak event.target.value
    event.target.value = ""
    event.preventDefault()


