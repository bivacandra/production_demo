# # frozen_string_literal: true

# require 'google/cloud/pubsub'

# pubsub = Google::Cloud::PubSub.new(
#   project_id: 'rugged-airway-346710',
#   credentials: '/home/alo-bivachandralutfi/practices/capistrano/credentials.json'
# )

# # Retrieve a subscription
# sub = pubsub.subscription 'topic-production-demo-sub'

# # Create a subscriber to listen for available messages
# # By default, this block will be called on 8 concurrent threads.
# # This can be changed with the :threads option
# subscriber = sub.listen do |received_message|
#   # process message
#   puts "Data: #{received_message.message.data}, published at #{received_message.message.published_at}"
#   received_message.acknowledge!
# end

# # Handle exceptions from listener
# subscriber.on_error do |exception|
#   puts "Exception: #{exception.class} #{exception.message}"
# end

# # Gracefully shut down the subscriber on program exit, blocking until
# # all received messages have been processed or 10 seconds have passed
# at_exit do
#   subscriber.stop!(10)
# end

# # Start background threads that will call the block passed to listen.
# subscriber.start
