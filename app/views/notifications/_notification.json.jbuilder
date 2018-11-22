json.extract! notification, :id, :description, :photo, :service_order_id, :created_at, :updated_at
json.url notification_url(notification, format: :json)
