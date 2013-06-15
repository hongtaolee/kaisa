# encoding: utf-8

# thumb -- ckeditor 使用
IMAGE_UPLOADER_ALLOW_IMAGE_VERSION_NAMES = ['800','650','500x280','150x120','145x90', '153x120','684x250','176x75','220x150','243x75','980x300','160x120']
UPLOAD_URL = "blanks"
class ImageUploader < CarrierWave::Uploader::Base
  storage :upyun

  def store_dir
    "#{model.class.to_s.underscore.pluralize}/#{mounted_as.to_s.pluralize}/original"
  end
  
  # 搞一个大一点的默认图片取名 blank.png 用 FTP 传入图片空间，用于作为默认图片
  # 由于有自动的缩略图处理，小图也不成问题
  # Setting.upload_url 这个是你的图片空间 URL
  def default_url
    "#{UPLOAD_URL}/blank.png#{version_name}"
  end

  # 覆盖 url 方法以适应“图片空间”的缩略图命名
  def url(version_name = "")
    @url ||= super({})
    version_name = version_name.to_s
    return @url if version_name.blank?
    if not version_name.in?(IMAGE_UPLOADER_ALLOW_IMAGE_VERSION_NAMES)
      # 故意在调用了一个没有定义的“缩略图版本名称”的时候抛出异常，以便开发的时候能及时看到调错了
      raise "ImageUploader version_name:#{version_name} not allow."
    end
    [@url,version_name].join("!") # 我这里在图片空间里面选用 ! 作为“间隔标志符”
  end
  
  def extension_white_list
    %w(jpg jpeg gif png)
  end

  def filename
    if super.present?
      model.uploader_secure_token ||= SecureRandom.uuid.gsub("-","")
      Rails.logger.debug("(BaseUploader.filename) #{model.uploader_secure_token}")
      "#{model.uploader_secure_token}.#{file.extension.downcase}"
    end
  end

end
