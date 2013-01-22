CarrierWave.configure do |config|
  # config.permissions = 0666
  # config.directory_permissions = 0777
  # config.storage = :file
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'xxx',
    :aws_secret_access_key  => 'yyy'
  }
  config.fog_directory  = 'confskel'
end
