json.extract! address, :id, :user_id, :address_type, :line_1, :line_2, :city, :state, :country, :created_at, :updated_at
json.url address_url(address, format: :json)
