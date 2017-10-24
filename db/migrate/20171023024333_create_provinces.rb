class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.string :name,null: false, comment: "名称"
      t.string :pinyin, comment: "名称拼音"
      t.integer :sort,null: false, default: 0, comment: "名称"
      t.timestamps
    end
  end
end
