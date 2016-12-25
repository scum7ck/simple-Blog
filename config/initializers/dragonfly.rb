require 'dragonfly'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick

  secret "f7af7de21769ddb76d149d0348fa181ad93758e46d2945d9b82b588d4d96e912"

  url_format "/media/:job/:name"

  datastore :file,
    root_path: Rails.root.join('public/system/dragonfly', Rails.env),
    server_root: Rails.root.join('public/system/dragonfly', Rails.env)
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend Dragonfly::Model
  ActiveRecord::Base.extend Dragonfly::Model::Validations
end
