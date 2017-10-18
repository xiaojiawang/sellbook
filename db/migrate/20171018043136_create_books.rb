class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :user_id, null: false, comment: "持有者"
      t.string :name, null: false, comment: "书名"
      t.string :author, comment: "作者"
      t.string :description, comment: "简介"
      t.decimal :price, precision: 5, scale: 2, null: false ,comment: "价格"
      t.integer :status, null: false, default: 1, comment: "状态"
      t.integer :position, null: false, default: 1, comment: "排序"
      t.string :pic_key, comment: "封面"
      t.timestamps
    end
  end
end
