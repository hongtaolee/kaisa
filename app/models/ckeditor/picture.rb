class Ckeditor::Picture < Ckeditor::Asset
  mount_uploader :data, ImageUploader
  attr_accessor :data_cache, :remove_data, :uploader_secure_token

  def url_content
    url('800')
  end
end
