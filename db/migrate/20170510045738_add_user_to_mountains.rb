class AddUserToMountains < ActiveRecord::Migration[5.0]
  def change
    add_reference :mountains, :user, foreign_key: true
  end
end
