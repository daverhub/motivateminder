class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.text :details
      t.datetime :date, null: false
      t.string :time, null: false
      t.integer :user_id

      t.timestamps
    end
  end
end
