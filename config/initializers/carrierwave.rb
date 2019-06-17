CarrierWave.configure do |config|
      config.fog_provider = 'fog/aws'
      config.fog_credentials = {
        :provider => 'AWS',
        :aws_access_key_id => 'AKIAIX7TBHPOYR7OQR2Q',
        :aws_secret_access_key => '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',
        :region => 'eu-west-3'
      }
  
      config.fog_directory = 'catappimages'
      config.storage = :fog
   
      config.enable_processing = Rails.env.development?
    
  end