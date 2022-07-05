# frozen_string_literal: true

module SiloamGroups
  module Api
    module V2
      class SchedulesController < ApplicationController
        skip_before_action :verify_authenticity_token

        def time_slot
          response_json = {
            status: 'OK',
            data: [
              {
                schedule_id: '172f85fd-7509-4f56-8bf1-f738a8b1c8d5',
                consultation_type_id: '1',
                hospital_id: '5588f248-6f45-4968-9009-13ee8f3bd5ec',
                hospital_time_zone: 7,
                appointment_no: 0,
                appointment_date: '2022-07-16',
                is_reserved_slot: false,
                appointment_id: nil,
                is_full: false,
                time_slot_min_number: 180,
                from_time: '12:30:00',
                to_time: '12:45:00'
              },
              {
                schedule_id: '172f85fd-7509-4f56-8bf1-f738a8b1c8d5',
                consultation_type_id: '1',
                hospital_id: '5588f248-6f45-4968-9009-13ee8f3bd5ec',
                hospital_time_zone: 7,
                appointment_no: 1,
                appointment_date: '2022-07-16',
                is_reserved_slot: false,
                appointment_id: nil,
                is_full: false,
                time_slot_min_number: 180,
                from_time: '12:45:00',
                to_time: '13:00:00'
              },
              {
                schedule_id: '172f85fd-7509-4f56-8bf1-f738a8b1c8d5',
                consultation_type_id: '1',
                hospital_id: '5588f248-6f45-4968-9009-13ee8f3bd5ec',
                hospital_time_zone: 7,
                appointment_no: 2,
                appointment_date: '2022-07-16',
                is_reserved_slot: false,
                appointment_id: nil,
                is_full: false,
                time_slot_min_number: 180,
                from_time: '13:00:00',
                to_time: '13:15:00'
              },
              {
                schedule_id: '172f85fd-7509-4f56-8bf1-f738a8b1c8d5',
                consultation_type_id: '1',
                hospital_id: '5588f248-6f45-4968-9009-13ee8f3bd5ec',
                hospital_time_zone: 7,
                appointment_no: 4,
                appointment_date: '2022-07-16',
                is_reserved_slot: false,
                appointment_id: nil,
                is_full: false,
                time_slot_min_number: 180,
                from_time: '13:30:00',
                to_time: '13:45:00'
              },
              {
                schedule_id: '172f85fd-7509-4f56-8bf1-f738a8b1c8d5',
                consultation_type_id: '1',
                hospital_id: '5588f248-6f45-4968-9009-13ee8f3bd5ec',
                hospital_time_zone: 7,
                appointment_no: 5,
                appointment_date: '2022-07-16',
                is_reserved_slot: false,
                appointment_id: nil,
                is_full: false,
                time_slot_min_number: 180,
                from_time: '13:45:00',
                to_time: '14:00:00'
              }
            ],
            message: 'Get time slot successfully',
            title_en: 'Announcement',
            title_id: 'Pengumuman',
            content_en: 'Siloam Hospitals Kebon Jeruk in partnership with AIDO Health present an online consultation channel. For doctor schedule & appointment for online consultation, please download Aido Health. For more information, you can contact us at 1-500-181 or AIDO Health Support at 0811-8481-436 (WA Only)',
            content_id: 'Siloam Hospitals Kebon Jeruk bekerjasama dengan AIDO Health agar Anda dapat melakukan konsultasi rawat jalan secara online. Untuk jadwal dokter & pembuatan janji konsultasi online, mohon untuk mendownload aplikasi Aido Health. Untuk informasi lebih lanjut, Anda dapat  hubungi kami di 1-500-181 atau AIDO Health Support di 0811-8481-436 (khusus Whatsapp)'
          }

          render json: response_json
        end
      end
    end
  end
end
