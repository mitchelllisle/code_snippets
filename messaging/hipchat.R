# source: https://github.com/robertzk/hipchat

# Endpoints

# hipchat('Room name or email', "I'm in a hipchat!")
# hipchat_topic('Room name', "This is the new topic")
# hipchat_create_room('Room name')
# hipchat_delete_room('Room name') # Will prompt a confirmation
# hipchat_history('Room name') # A data.frame with messages
# hipchat_rooms() # Fetch all available hipchat rooms
# hichat_create_user(...)
# hipchat_update_user(...)
# hipchat_delete_user('terrible@employee.com')
# hipchat_list_users()

# You will need to have a HIPCHAT_API_TOKEN in your environment variables,
# or set a options(hipchat.api_token = 'your_api_token') in your ~/.Rprofile.

hipchat_send('room', 'AppSpeak', 'notification',
             color = 'yellow', message = paste('This is a message with a variable', answer[1]),
             notify = TRUE, message_format = 'html')
