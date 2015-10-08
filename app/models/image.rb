class Image < ActiveRecord::Base
  #attr_accessor :image_name_file_name
  #attr_accessor :image_name_content_type
  #attr_accessor :image_name_file_size
  #attr_accessor :image_name_updated_at
  
  #has_attached_file :image_name, styles: { large:"600x300",  medium: "400x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  #validates_attachment_content_type :image_name, content_type: /\Aimage\/.*\Z/
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "200x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  
end
