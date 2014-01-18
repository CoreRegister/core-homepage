# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

Core::Application.configure do
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
:address              => "smtp.gmail.com",
:port                 => 587,
:domain               => "coreregister.com",
:user_name            => "chris@coreregister.com",
:password             => "89fb918a9ddcc475fe5668d542e3c2c6",
:authentication       => 'plain',
:enable_starttls_auto => true  }
config.action_mailer.perform_deliveries = true
config.action_mailer.raise_delivery_errors = true
end