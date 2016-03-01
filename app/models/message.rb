class Message < ApplicationRecord
	after_create_commit { MessageBroadcastJob.perform_later self}
end

# if you use just the “after_create” hook then job runs before commit 
# so it will error! instead use “after_create_commit”: 
# This will send the MessageBroadcastJob to ActionCable.server.broadcast.