class CreateRibas < ActiveRecord::Migration
  def change
    create_table :ribas do |t|
      t.string :name, index: true

      t.timestamps null: false
    end
  end
end
