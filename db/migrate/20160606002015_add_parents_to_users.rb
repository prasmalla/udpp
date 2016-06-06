class AddParentsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :sex, :string
    add_column :users, :father_id, :integer
    add_column :users, :mother_id, :integer
    add_column :users, :current_spouse_id, :integer

    add_index :users, [:father_id, :mother_id, :current_spouse_id], :unique => true
    add_index :users, :father_id
    add_index :users, :mother_id
    add_index :users, :current_spouse_id
  end
end
