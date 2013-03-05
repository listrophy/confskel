CarrierWave.configure do |config|
  # config.permissions = 0666
  # config.directory_permissions = 0777
  #config.storage = :file

  if Rails.env.test? or Rails.env.development?
    config.storage :file
    config.enable_processing = false
  else
    config.storage :fog
  end

  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],
    :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY']
  }
  config.fog_directory  = 'confskel'
end
