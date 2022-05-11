json.extract! contact, :id, :user_id, :contact_type, :number, :created_at, :updated_at
json.url contact_url(contact, format: :json)
