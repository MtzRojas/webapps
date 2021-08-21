class CreateTableForEnterprise < ActiveRecord::Migration[6.1]
  def change
    create_table :enterprises do |t|
      t.string :name
      t.string :address
      t.string :legal_representative
      t.string :phone_number
      t.integer :level

      t.timestamps
    end
  end
end
