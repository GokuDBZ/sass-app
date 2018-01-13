# Load the Rails application.
require File.expand_path('../application', __FILE__)



# Initialize the Rails application.
Rails.application.initialize!

# Seetings for send grid

ActionMailer::Base.smtp_settings = {
    :address => "smtp.sendgrid.net",
    :port => '587',
    :authentication => :plain,
    :user_name => ENV["SENDGRID_USERNAME"],
    :password => ENV["SENDGRID_PASSWORD"],
    :enable_start_tls_auto => true
}
