# config/initializers/datadog.rb
Datadog.configure do |c|
  app = 'production_demo'
  c.env = 'production'
  c.service = "#{app}-#{Rails.env}"
  c.use :rails, service_name: "rails_#{app}_#{Rails.env}", log_injection: true
end