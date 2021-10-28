CarrierWave.configure do |config|
  config.ignore_integrity_errors = false
  config.ignore_processing_errors = false
  config.ignore_download_errors = false

  if Rails.env.test? || Rails.env.development?
      puts "Image Host: local filesystem"
      config.storage = :file
      config.enable_processing = false
      config.root = "#{Rails.root}/public"
  elsif ENV.has_key? 'AWS_ACCESS_KEY' and ENV.has_key? 'AWS_SECRET_KEY'
    puts "\nImage Host: AWS S3\n"
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['AWS_ACCESS_KEY'],
      aws_secret_access_key: ENV['AWS_SECRET_KEY'],
      region: ENV["AWS_REGION"]
    }
    config.fog_directory = ENV["AWS_BUCKET"]
    config.cache_dir = "#{Rails.root}/tmp/uploads"
    config.storage = :fog
  else
    raise "RAILS_ENV: #{ENV["RAILS_ENV"]} <- Without setting AWS keys."
    # puts "Image Host: AWS"
    # config.storage = :fog
  end
end
