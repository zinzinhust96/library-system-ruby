class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email_id
      t.string :password
      t.string :phone
      t.text :address
      t.boolean :is_admin
      t.boolean :is_deleted

      t.timestamps null: false
    end
  end
end
