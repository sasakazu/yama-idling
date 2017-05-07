class AddImage3ToMountains < ActiveRecord::Migration[5.0]
  def change
    add_column :mountains, :image3, :string
  end
end
