class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.integer :gender
      t.string :first_name
      t.string :last_name
      t.string :first_name_alt
      t.string :last_name_alt

      t.timestamps
    end
  end
end
