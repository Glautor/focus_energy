class AddPoleToServiceOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :service_orders, :pole, :string
  end
end
