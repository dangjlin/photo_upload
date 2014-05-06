class Uploadphoto < ActiveRecord::Base
  
  mount_uploader :file, PhotoUploader
  
    before_save :update_banner_attributes
  
    private
    def update_banner_attributes
    if file.present? && file_changed?
      self.name         = file.file.filename
      self.size         = file.file.size
      self.content_type = file.file.content_type
    end
    end 
      
# process :resize_to_fill => [800,600]
#  version :thumb do
#      process :resize_to_fill => [200,200]
#  end
end
