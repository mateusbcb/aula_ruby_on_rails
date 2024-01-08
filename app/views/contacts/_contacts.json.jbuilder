json.extract! contacts, :id, :name, :phone, :created_at, :updated_at
json.url contacts_url(contacts, format: :json)
