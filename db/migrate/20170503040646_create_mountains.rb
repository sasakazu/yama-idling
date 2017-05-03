class CreateMountains < ActiveRecord::Migration[5.0]
  def change
    create_table :mountains do |t|
      t.string :name
      t.integer :price
      t.string :where
      t.string :image

      t.timestamps
    end
  end
end
