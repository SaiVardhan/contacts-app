json.extract! contact, :id, :name, :title, :type, :phone, :ext, :fax, :email, :created_at, :updated_at
json.url contact_url(contact, format: :json)
