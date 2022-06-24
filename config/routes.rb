# frozen_string_literal: true

Rails.application.routes.draw do
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
