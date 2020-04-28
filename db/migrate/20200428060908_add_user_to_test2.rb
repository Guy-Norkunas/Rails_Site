class AddUserToTest2 < ActiveRecord::Migration[6.0]
  def change
    add_reference :test2s, :user, null: false, foreign_key: true
  end
end
