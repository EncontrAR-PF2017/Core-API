Wor::Push::Notifications::Aws.configure do |config|
  config.device_types = [:ios, :android]       		# optional
  config.table_name = 'finders'                 		# optional
  config.aws_region = 'us-west-2'
  config.aws_android_arn = 'arn:aws:sns:us-west-2:200783692416:app/GCM/Encontrar-Firebase'     # mandatory field if you choose to use Android devices
  config.aws_ios_arn = 'some:ios:arn'             # mandatory field if you choose to use iOS devices
  config.aws_ios_sandbox = true                   # mandatory field if you choose to use iOS devices
end