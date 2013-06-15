CarrierWave.configure do |config|
  config.storage = :upyun
  config.upyun_username = "hongtaolee"
  config.upyun_password = 'shuang'
  config.upyun_bucket = "tutu-test"
  config.upyun_bucket_domain = "tutu-test.b0.upaiyun.com"
end