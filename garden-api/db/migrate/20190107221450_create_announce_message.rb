class CreateAnnounceMessage < ActiveRecord::Migration[5.2]
  def change
    create_table :announce_messages do |t|
      t.string :message
      t.references :device, foreign_key: true

      t.timestamps
    end
  end
end
