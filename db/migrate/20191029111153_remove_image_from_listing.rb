class RemoveImageFromListing < ActiveRecord::Migration[5.2]
  def change
    remove_column :listings, :image, :text
  end
end
