class CreateServiceOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :service_orders do |t|
      t.string :service_type
      t.datetime :final_term
      t.text :description
      t.string :user_type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
