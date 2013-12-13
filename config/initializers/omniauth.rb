OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['APP_ID'], ENV['APP_SECRET'],
  :image_size => 'large', :scope => 'email,user_friends,user_photos,read_friendlists'
end