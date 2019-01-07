class CreateGarden < ActiveRecord::Migration[5.2]
  def change
    create_table :gardens do |t|
      t.string :name
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
