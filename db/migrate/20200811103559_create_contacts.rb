class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.integer :user_id
      t.string :type
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.date :birthday

      t.timestamps
    end
  end
end
