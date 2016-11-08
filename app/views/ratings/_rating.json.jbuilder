json.extract! rating, :id, :score, :word, :description, :created_at, :updated_at
json.url rating_url(rating, format: :json)