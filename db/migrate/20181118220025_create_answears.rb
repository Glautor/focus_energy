class CreateAnswears < ActiveRecord::Migration[5.2]
  def change
    create_table :answears do |t|
      t.text :description
      t.references :consulting, foreign_key: true
      t.references :admin, foreign_key: true

      t.timestamps
    end
  end
end
