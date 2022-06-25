# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'
  resources :posts
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :siloam_groups do
    namespace :api do
      namespace :v1 do
        resources :appointments, only: [] do
          collection do
            post 'update-payment', to: 'appointments#update_payment'
          end
        end
      end
    end
  end
end
