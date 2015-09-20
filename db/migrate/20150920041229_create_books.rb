class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.text :description
      t.boolean :is_deleted
      t.string :isbn
      t.boolean :is_requested

      t.timestamps null: false
    end
  end
end
