class CreateMusicOwnerships < ActiveRecord::Migration[5.1]
  def change
    create_table :music_ownerships do |t|
      t.integer :user_key_id, null: false
      t.integer :music_key_id, null: false

      t.timestamps
    end
  end
end
