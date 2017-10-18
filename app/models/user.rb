class User < ActiveRecord::Base
  has_secure_password 
  attr_accessible :name, :mobile, :email, :password, :password_confirmation
  before_create :init_data
  has_many :books

  def self.authenticated(mobile,password)
    where("mobile = ?", mobile).first.try(:authenticate, password)
  end

  # 返回指定字符串的哈希摘要
  def self.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  def init_data
    self.password = 'mUc3m09RsgyRf' if self.password_digest.blank?
  end
  
end
