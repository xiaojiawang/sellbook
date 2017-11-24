class Book < ActiveRecord::Base
  mount_uploader :pic_key, PicKeyUploader
  attr_accessible :name, :user_id, :author, :description, :price, :status, :position, :pic_key
  belongs_to :user

  def self.import(file)
    file_path = "#{Rails.root}/public" + file.url
    p file_path
    p "111111111"
    # sheet = Roo::Spreadsheet.open(file_path, extension: :xls)
    sheet = Roo::Spreadsheet.open(file_path, extension: :xlsx)
    sheet.each_with_index do |hash, index|
      next if index == 0
      begin
        Book.where(name: hash[1]).first_or_create(
          user_id: hash[0].to_i,
          name: hash[1],
          price: hash[2].to_i
          )
      rescue Exception => e
        next
      end
    end
    return true
  end

end
