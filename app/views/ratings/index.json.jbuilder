json.array!(@ratings) do |rating|
  json.extract! rating, :id, :client_id, :restaurant_id, :rate, :bill
  json.url rating_url(rating, format: :json)
end
