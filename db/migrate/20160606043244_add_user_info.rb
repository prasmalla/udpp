class AddUserInfo < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string, :null => false
    add_column :users, :middle_name, :string
    add_column :users, :last_name, :string, :null => false
    add_column :users, :riba_id, :integer
    add_column :users, :birthday, :date
    add_column :users, :work_phone, :string
    add_column :users, :cell_phone, :string
    add_column :users, :address_id, :integer
    add_column :users, :pin, :integer
    add_column :users, :valid_until, :date
    add_column :users, :village_id, :integer
    add_column :users, :immigration_status, :string
    add_column :users, :occupation, :string
    add_column :users, :education, :string
    add_column :users, :resident_years, :integer
    add_index :users, :village_id
    add_index :users, :riba_id
  end
end
