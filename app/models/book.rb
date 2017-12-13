class Book < ActiveRecord::Base
  mount_uploader :pic_key, PicKeyUploader
  attr_accessible :name, :user_id, :author, :description, :price, :status, :position, :pic_key
  belongs_to :user
  has_many :zans

  def self.import(file)
    file_path = "#{Rails.root}/public" + file.url
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

  # def is_like?
  #   Zan.where(book_id: self.id, user_id: @current_user.id).first.
  # end

end
