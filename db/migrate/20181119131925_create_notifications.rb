class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.text :description
      t.string :photo
      t.references :service_order, foreign_key: true

      t.timestamps
    end
  end
end
