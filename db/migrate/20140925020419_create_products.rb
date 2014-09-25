class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.datetime :date
      t.string :image
      t.boolean :clock

      t.timestamps
    end
  end
end
