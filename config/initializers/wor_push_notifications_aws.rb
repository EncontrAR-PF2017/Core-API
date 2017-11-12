Wor::Push::Notifications::Aws.configure do |config|
  config.device_types = [:android]       		# optional
  config.table_name = 'finders'                 		# optional
  config.aws_region = ENV['AWS-REGION'] ? ENV['AWS-REGION'] : 'us-west-2'
  config.aws_android_arn = ENV['AWS-ANDROID-ARN'] ? ENV['AWS-ANDROID-ARN'] : ''     # mandatory field if you choose to use Android devices
end