class AddMetatoUsers < ActiveRecord::Migration
  def up
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string
    add_column :users, :location, :string
    add_column :users, :bio, :text
  end

  def down
    remove_column :users, :first_name, :string
    remove_column :users, :last_name, :string
    remove_column :users, :username, :string
    remove_column :users, :location, :string
    remove_column :users, :bio, :text
  end
end
