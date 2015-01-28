# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Beatsdb::Application.initialize!

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
   :tls => true,
   :address => "smtp.gmail.com",
   :port => 465,
   :domain => "gmail.com",
   :authentication => :login,
   :user_name => "gregwcmkim@gmail.com",
   :password => "enrag3dunited"
 }
