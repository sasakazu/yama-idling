class AddImage2ToMountains < ActiveRecord::Migration[5.0]
  def change
    add_column :mountains, :image2, :string
  end
end
