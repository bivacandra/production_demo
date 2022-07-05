# frozen_string_literal: true

module SiloamGroups
  module Api
    module V2
      class AppointmentsController < ApplicationController
        skip_before_action :verify_authenticity_token

        def update_payment
          response_json = {
            status: 'OK',
            message: 'Success - Update Payment Appointment',
            data: {}
          }
          # AppointmentService.send_notif_pubsub(response_json)

          render json: response_json
        end
      end
    end
  end
end
