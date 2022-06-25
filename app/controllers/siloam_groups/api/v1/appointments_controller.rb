# frozen_string_literal: true

require 'pubsub'

module SiloamGroups
  module Api
    module V1
      class AppointmentsController < ApplicationController
        skip_before_action :verify_authenticity_token

        def update_payment
          response_json = {
            status: 'OK',
            message: 'Success - Update Payment Appointment',
            data: {}
          }

          Pubsub.new.publish_message(response_json)
          render json: response_json
        end
      end
    end
  end
end
