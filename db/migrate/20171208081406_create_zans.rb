class CreateZans < ActiveRecord::Migration
  def change
    create_table :zans do |t|
      t.integer :user_id
      t.integer :book_id
      t.integer :status, default: 0
      t.timestamps
    end
  end
end
