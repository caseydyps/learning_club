class AddUserAvatar < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :role, :string, default: "normal"
    add_column :users, :avatar, :string
    add_column :users, :name, :string
  end
end
