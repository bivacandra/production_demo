# config/initializers/datadog.rb
Datadog.configure do |c|
  app = 'production_demo'
  c.env = 'production'
  c.service = "#{app}-#{Rails.env}"
  c.sampling.default_rate = 1.0
end