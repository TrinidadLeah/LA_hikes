class AddUserRefToHike < ActiveRecord::Migration[5.0]
  def change
    add_reference :hikes, :user, foreign_key: true
  end
end
