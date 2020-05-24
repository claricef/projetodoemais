class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :text
      t.references :ong, foreign_key: true
      t.references :doador, foreign_key: true

      t.timestamps
    end
  end
end
