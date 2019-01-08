class CreateMoistureLevel < ActiveRecord::Migration[5.2]
  def change
    create_table :moisture_levels do |t|
      t.integer :reading
      t.references :device, foreign_key: true

      t.timestamps
    end
  end
end
