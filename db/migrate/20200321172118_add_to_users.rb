class AddToUsers < ActiveRecord::Migration[5.2]
  def change 
  	add_column :users, :tipo, :integer
  	add_column :users, :email, :string
  	add_column :users, :senha, :string
  end
end
