json.extract! track, :id, :album_id, :title, :artist, :released, :minutes, :seconds, :created_at, :updated_at
json.url track_url(track, format: :json)
