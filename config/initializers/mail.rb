# Email settings
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address => "smtp.mail.yahoo.com",
  :port => 465,
  :domain => "yahoo.com",
  :authentication => :login,
  :user_name => "clhemphi@yahoo.com",
  :password => "yourapplicationpassword"  
}

