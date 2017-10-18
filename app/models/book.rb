class Book < ActiveRecord::Base
  mount_uploader :pic_key, PicKeyUploader
  attr_accessible :name, :user_id, :author, :description, :price, :status, :position, :pic_key
  belongs_to :user

end
