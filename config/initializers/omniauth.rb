require 'openid/store/filesystem' 
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'rDlJyYfJmLgELWCQBnPw', 'T9DjSYIvzqtLr1KsMb06VlmGrkHnnPZHt6OTj3HX4'
  provider :facebook, '200849243293458', 'cfae3ad039ab67e0ad1b9f3fa207ad18', :scope => 'email,read_friendlists,user_birthday,publish_actions,user_actions.music,read_stream', :display => 'popup', :secure_image_url => true
  # provider :linked_in, 'CONSUMER_KEY', 'CONSUMER_SECRET'
  # provider :openid, OpenID::Store::Filesystem.new('/tmp') 
  # use OmniAuth::Strategies::OpenID, OpenID::Store::Filesystem.new('/tmp'), :name => 'yahoo', :identifier => 'yahoo.com' 
  # use OmniAuth::Strategies::OpenID, OpenID::Store::Filesystem.new('/tmp'), :name => 'google', :identifier => 'https://www.google.com/accounts/o8/id'

  OmniAuth.config.logger = Logger.new(STDOUT)
  OmniAuth.logger.progname = "omniauth"
end
