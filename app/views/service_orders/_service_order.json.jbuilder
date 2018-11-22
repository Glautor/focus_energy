json.extract! service_order, :id, :service_type, :final_term, :description, :user_type, :user_id, :created_at, :updated_at
json.url service_order_url(service_order, format: :json)
