class CreateDialogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dialogs do |t|
      t.string :date
      t.string :entry_name
      t.integer :rating
      t.string :notes

      t.timestamps
    end
  end
end
