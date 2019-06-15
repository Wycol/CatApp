CarrierWave.configure do |config|
      config.fog_provider = 'fog/aws'
      config.fog_credentials = {
        :provider => 'AWS',
        :aws_access_key_id => 'AKIAJPBCQRNJLTLGZHSA',
        :aws_secret_access_key => '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',
        :region => 'eu-west-3'
      }
  
      config.fog_directory = 'catappimages'
      config.storage = :fog
   
      config.enable_processing = Rails.env.development?
    
  end