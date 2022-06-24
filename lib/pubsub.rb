# frozen_string_literal: true

require 'google/cloud/pubsub'

class Pubsub
  def initialize
    @project_id = ENV['PUBSUB_PROJECT_ID']
    @keyfile = ENV['PUBSUB_KEYFILE']
    @pubsub = Google::Cloud::Pubsub.new project: @project_id, keyfile: @keyfile
    @topic_demo = ENV['PUBSUB_TOPIC_DEMO']
  end

  def publish_message(message)
    @pubsub.topic(@topic_demo).publish(message.to_json)
    Rails.logger.info('================Message published===============')
  end
end
