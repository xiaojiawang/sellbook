class AddProvinceIdInUser < ActiveRecord::Migration
  def change
    add_column :users, :province_id, :integer
    add_column :users, :city_id, :integer
  end
end
