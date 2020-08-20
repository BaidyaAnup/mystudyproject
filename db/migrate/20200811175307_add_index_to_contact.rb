class AddIndexToContact < ActiveRecord::Migration[6.0]
  def change
  	add_index :contacts, [:type, :user_id]
  end
end
