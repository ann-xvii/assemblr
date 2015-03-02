if Rails.env.production?
	CarrierWave.configure do |config|
		config.fog_credentials = {
			# Configuration for Amazon S3
			:provider				=> 'AWS',
			:aws_access_key_id 		=> ENV['S3_ACCESS_KEY'],
			:aws_secret_access_key 	=> ENV['S3_SECRET_KEY'],
			#:host                  => nil,              # optional, defaults to nil
			#:endpoint              => nil               # optional, defaults to nil
		}
		config.fog_directory = ENV['S3_BUCKET']
		#config.fog_public     = true          # optional, defaults to true
    	#config.fog_attributes = {}            # optional, defaults to {}
	end
end