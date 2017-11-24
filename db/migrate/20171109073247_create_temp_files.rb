class CreateTempFiles < ActiveRecord::Migration
  def change
    create_table :temp_files do |t|
      t.string :url, comment: "文件路径"

      t.timestamps
    end
  end
end
