class User < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :number, :integer
    add_column :users, :name, :string
  end
end
