CarrierWave.configure do |config|
  config.storage = :upyun
  config.upyun_username = "yuyuanwai"
  config.upyun_password = '1q2w3e4r'
  config.upyun_bucket = "kaisa-images"
  config.upyun_bucket_domain = "kaisa-images.b0.upaiyun.com"
end