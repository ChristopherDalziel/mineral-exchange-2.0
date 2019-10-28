class CreateUserDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :user_details do |t|
      t.references :user, foreign_key: true
      t.integer :phone
      t.string :name
      t.text :address

      t.timestamps
    end
  end
end
