class TempFile < ActiveRecord::Base
  # attr_accessible :title, :body
  mount_uploader :url, FileUploader
end
