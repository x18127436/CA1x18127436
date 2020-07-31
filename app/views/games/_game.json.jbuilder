json.extract! game, :id, :brand, :publisher, :description, :release_year, :genre, :title, :price, :created_at, :updated_at
json.url game_url(game, format: :json)
