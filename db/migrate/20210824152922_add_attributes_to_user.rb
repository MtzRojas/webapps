class AddAttributesToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string, after: :id
    add_column :users, :last_name, :string, after: :name
    add_column :users, :nickname, :string, after: :last_name
    add_column :users, :job, :string, after: :nickname
  end
end
