json.extract! music, :id, :title, :play_time, :artists, :album, :genre, :like, :created_at, :updated_at
json.url music_url(music, format: :json)
