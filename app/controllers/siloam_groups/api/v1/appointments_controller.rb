# frozen_string_literal: true

module SiloamGroups
  module Api
    module V1
      class AppointmentsController < ApplicationController
        skip_before_action :verify_authenticity_token

        def update_payment
          response_json = {
            status: 'OK'
          }
          render json: response_json
        end
      end
    end
  end
end
