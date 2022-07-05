# frozen_string_literal: true

module SiloamGroups
  module Api
    module V2
      class MobileController < ApplicationController
        skip_before_action :verify_authenticity_token

        def signup
          response_json = {
            status: 'OK',
            # message: 'Success - Mobile Signup',
            data: {
              contact_id: 'b5f90821-1d08-1f68-2388-29151c28a55d',
              name: 'John Pieter',
              gender_id: nil,
              birth_date: '1994-07-07',
              phone_number_1: '082297175638',
              email_address: 'mail.test@test.uk',
              contact_status_id: '3',
              channel_id: '0',
              created_by: '7e8fdbdb-cf62-4fca-8bd2-8296e5345f23',
              created_from: '::ffff:10.1.129.94',
              modified_by: '7e8fdbdb-cf62-4fca-8bd2-8296e5345f23',
              modified_from: '::ffff:10.1.129.94',
              created_name: nil,
              modified_name: nil,
              created_date: '2018-12-06T10:51:50.194Z',
              modified_date: '2018-12-06T10:51:50.194Z',
              mobile_status: 'active'
            }
          }

          if params['checkOnly'] == 'true'
            response_json = {
              "status": 'OK',
              "data": {
                "contact_id": 'b5f90821-1d08-1f68-2388-29151c28a55d',
                "contact_status_id": '3',
                "phone_number_1": '082297175638',
                "phone_number_2": nil,
                "mobile_status": 'active',
                "gender_id": nil
              }
            }
          end

          render json: response_json
        end

        def doctor_leaves
          response_json = {
            status: 'OK',
            message: 'Success',
            data: [
              {
                doctor_id: '483127df-f401-4abf-a93c-858e203c65d4',
                hospital_id: '5588f248-6f45-4968-9009-13ee8f3bd5ec',
                from_date: '2019-01-08',
                to_date: '2019-01-08'
              },
              {
                doctor_id: '483127df-f401-4abf-a93c-858e203c65d4',
                hospital_id: '5588f248-6f45-4968-9009-13ee8f3bd5ec',
                from_date: '2019-01-12',
                to_date: '2019-01-12'
              },
              {
                doctor_id: '483127df-f401-4abf-a93c-858e203c65d4',
                hospital_id: '5588f248-6f45-4968-9009-13ee8f3bd5ec',
                from_date: '2019-01-15',
                to_date: '2019-01-15'
              },
              {
                doctor_id: '483127df-f401-4abf-a93c-858e203c65d4',
                hospital_id: '5588f248-6f45-4968-9009-13ee8f3bd5ec',
                from_date: '2019-01-22',
                to_date: '2019-01-22'
              },
              {
                doctor_id: '483127df-f401-4abf-a93c-858e203c65d4',
                hospital_id: '5588f248-6f45-4968-9009-13ee8f3bd5ec',
                from_date: '2019-04-27',
                to_date: '2019-04-27'
              },
              {
                doctor_id: '483127df-f401-4abf-a93c-858e203c65d4',
                hospital_id: '5588f248-6f45-4968-9009-13ee8f3bd5ec',
                from_date: '2019-11-12',
                to_date: '2019-11-30'
              }
            ]
          }

          render json: response_json
        end

        private

        def mobile_signup_params
          params.permit(:checkOnly)
        end
      end
    end
  end
end
