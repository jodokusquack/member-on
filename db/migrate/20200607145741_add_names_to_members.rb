class AddNamesToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :name, :string
    add_column :members, :username, :string, null: false, default: ''
    add_index :members, :username, unique: true
  end
end
