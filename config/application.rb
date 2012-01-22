require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(:default, Rails.env) if defined?(Bundler)


module Mp3app
  class Application < Rails::Application
    config.encoding = "utf-8"
    config.filter_parameters += [:password]

    AWS::S3::Base.establish_connection!(
      :access_key_id     => 'AKIAJI4ZKSDW6ETRVRGA',
      :secret_access_key => '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'
    )

    BUCKET = 'Chmura'
  end
end

