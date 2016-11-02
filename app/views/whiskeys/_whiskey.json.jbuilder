json.extract! whiskey, :id, :title, :abv, :price, :color, :nose, :taste, :finish, :overall, :score, :created_at, :updated_at
json.url whiskey_url(whiskey, format: :json)