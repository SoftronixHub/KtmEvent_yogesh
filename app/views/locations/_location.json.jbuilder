json.extract! location, :id, :name, :latitude, :longitude, :contactdetail, :created_at, :updated_at
json.url location_url(location, format: :json)
