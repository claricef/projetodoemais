class CreateDoacoes < ActiveRecord::Migration[5.2]
  def change
    create_table :doacoes do |t|
      t.string :item
      t.string :status
      t.text :obs
      t.references :ong, foreign_key: true

      t.timestamps
    end
  end
end
