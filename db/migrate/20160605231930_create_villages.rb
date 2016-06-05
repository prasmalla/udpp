class CreateVillages < ActiveRecord::Migration
  def change
    create_table :villages do |t|
      t.string :name, index: true

      t.timestamps null: false
    end
  end
end
