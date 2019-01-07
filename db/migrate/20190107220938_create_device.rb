class CreateDevice < ActiveRecord::Migration[5.2]
  def change
    create_table :devices do |t|
      t.string :uuid
      t.references :garden, foreign_key: true

      t.timestamps
    end
  end
end
