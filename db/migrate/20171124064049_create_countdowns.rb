class CreateCountdowns < ActiveRecord::Migration
  def change
    create_table :countdowns do |t|
      t.integer :book_id, null: false
      t.datetime :begin_time, null: false
      t.datetime :end_time, null: false
      t.timestamps
    end
  end
end
