class AddMessagerToMessages < ActiveRecord::Migration[5.2]
  def change
  	add_column :messages, :origin, :string
  end
end
