class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.references :user, foreign_key: true
      t.references :type, foreign_key: true
      t.string :mineral_name
      t.text :description
      t.text :location
      t.integer :price
      t.text :image
      t.integer :sold

      t.timestamps
    end
  end
end
