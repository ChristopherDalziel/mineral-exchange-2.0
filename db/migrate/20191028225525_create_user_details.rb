class CreateUserDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :user_details do |t|
      t.references :user, foreign_key: true
      t.integer :contact_number
      t.string :first_name
      t.string :lastname
      t.string :address_line_1
      t.string :address_line_2
      t.string :suburb
      t.references :state, foreign_key: true
      t.integer :postcode

      t.timestamps
    end
  end
end
