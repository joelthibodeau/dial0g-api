class AddUserToDialogs < ActiveRecord::Migration[5.2]
  def change
    add_reference :dialogs, :user, foreign_key: true
  end
end
