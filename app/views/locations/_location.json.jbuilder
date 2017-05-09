json.extract! location, :id, :name, :rooms, :availability, :created_at, :updated_at
json.url location_url(location, format: :json)
