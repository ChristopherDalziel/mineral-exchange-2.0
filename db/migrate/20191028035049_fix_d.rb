class FixD < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :is_seller, :boolean
  end
end
