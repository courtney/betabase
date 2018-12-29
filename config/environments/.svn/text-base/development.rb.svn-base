# Settings specified here will take precedence over those in config/environment.rb

# In the development environment your application's code is reloaded on
# every request.  This slows down response time but is perfect for development
# since you don't have to restart the webserver when you make code changes.
config.cache_classes = false

# Log error messages when you accidentally call methods on nil.
config.whiny_nils = true

# Show full error reports and disable caching
config.action_controller.consider_all_requests_local = true
config.action_view.debug_rjs                         = true
config.action_controller.perform_caching             = false
config.action_view.cache_template_extensions         = false

config.action_mailer.raise_delivery_errors = true
config.action_mailer.delivery_method = :smtp

#require 'smtp_ssl'

ActionMailer::Base.smtp_settings = {
  :address=>'smtp.gmail.com',    # default: localhost
  :port=>587,                        # default: 25
  :domain=>'betabase.org',
  :user_name=>'beta@betabase.org',
  :password=>'5pmac5pmac',
  :authentication=>:plain             # :plain, :login or :cram_md5
}

config.after_initialize do
  Markaby::Builder.set(:indent, 2)
end