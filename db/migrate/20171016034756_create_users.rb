class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :mobile, null: false, comment: "登录账号:(手机号码)"
      t.string :password, null: false, comment: "登录密码"
      t.string :name, comment: "用户名"
      t.string :email, comment: "邮箱 "
      
      t.timestamps
    end
  end
end
