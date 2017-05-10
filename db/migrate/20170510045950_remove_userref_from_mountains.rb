class RemoveUserrefFromMountains < ActiveRecord::Migration[5.0]
  def change
    remove_reference :mountains, :userref, foreign_key: true
  end
end
