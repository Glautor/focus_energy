class AddLocationToServiceOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :service_orders, :location, :string
  end
end
