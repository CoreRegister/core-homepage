# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

Core::Application.configure do
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
:address              => "smtp.sendgrid.net",
:port                 => 587,
:domain               => "heroku.com",
:user_name            => ENV['SENDGRID_USERNAME'],
:password             => ENV['SENDGRID_PASSWORD'],
:authentication       => 'plain',
:enable_starttls_auto => true  }
config.action_mailer.perform_deliveries = true
config.action_mailer.raise_delivery_errors = true
end