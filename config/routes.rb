# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'
  resources :posts
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :siloam_groups do
    namespace :api do
      namespace :v2 do
        resources :appointments, only: [] do
          collection do
            post 'update-payment', to: 'appointments#update_payment'
          end
        end

        resources :mobile, only: [] do
          collection do
            post 'signup', to: 'mobile#signup'
            get 'doctors/leave/hospital/:hospital_id', to: 'mobile#doctor_leaves'
          end
        end

        resource :schedules, only: [] do
          collection do
            get 'time-slot/hospital-id/:hospital_id/doctor-id/:doctor_id/appointment-date/:date',
                to: 'schedules#time_slot'
          end
        end
      end
    end
  end
end
