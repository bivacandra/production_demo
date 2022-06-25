# frozen_string_literal: true

require 'pubsub'

class AppointmentService
  def self.send_notif_pubsub(message)
    BaseJob.perform_in(1.seconds, message)
  end
end
