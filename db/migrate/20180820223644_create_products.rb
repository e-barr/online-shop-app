class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.text :description
      t.belongs_to :seller, foreign_key: true
      t.belongs_to :inventory, foreign_key: true

      t.timestamps
    end
  end
end
