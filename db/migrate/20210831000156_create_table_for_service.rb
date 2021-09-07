class CreateTableForService < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :name
      t.integer :price
      t.string :description

      t.timestamps
    end
  end
end
