class CreateMusics < ActiveRecord::Migration[5.1]
  def change
    create_table :musics do |t|
      t.string :title, null: false
      t.integer :play_time
      t.string :artists
      t.string :album
      t.string :genre
      t.boolean :like, default: false
      t.integer :user_id

      t.timestamps
    end
  end
end
