class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :quantity
      t.text :company

      t.timestamps
    end
  end
end
