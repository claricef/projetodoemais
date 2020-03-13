class AddImageToOng < ActiveRecord::Migration[5.2]
  def change
  	def up
    add_attachment :ongs, :image
  end

  def down
    remove_attachment :ongs, :image
  end
  end
end
