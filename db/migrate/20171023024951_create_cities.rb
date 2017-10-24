class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name,null: false, comment: "名称"
      t.string :pinyin, comment: "名称拼音"
      t.integer :province_id, null: false, default: 9, comment: "省份外键"
      t.integer :sort,null: false, default: 0, comment: "名称"

      t.timestamps
    end
  end
end
