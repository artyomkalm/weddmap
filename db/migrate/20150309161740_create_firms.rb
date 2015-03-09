class CreateFirms < ActiveRecord::Migration
  def change
    create_table :firms do |t|
      t.string :name
      t.string :category
      t.text :description
      t.string :address
      t.integer :user_id

      t.timestamps
    end
  end
end
