class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :isbn
      t.string :title
      t.string :description
      t.string :author

      t.timestamps null: false
    end
  end
end
