# frozen_string_literal: true

class BaseJob
  include Sidekiq::Job

  def perform(message)
    Pubsub.new.publish_message(message)
  end
end
