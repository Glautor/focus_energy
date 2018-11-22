class AddLocationToConsultings < ActiveRecord::Migration[5.2]
  def change
    add_column :consultings, :location, :string
  end
end
