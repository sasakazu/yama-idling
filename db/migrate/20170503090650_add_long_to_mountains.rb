class AddLongToMountains < ActiveRecord::Migration[5.0]
  def change
    add_column :mountains, :long, :integer
  end
end
