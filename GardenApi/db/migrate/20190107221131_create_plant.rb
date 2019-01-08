class CreatePlant < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.references :garden, foreign_key: true
      t.references :device, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
