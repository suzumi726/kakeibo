class CreateOutgoings < ActiveRecord::Migration[5.2]
  def change
    create_table :outgoings do |t|
      t.string :item
      t.integer :price
      t.string :place
      t.date :date
      t.timestamps null: true
    end
  end
end
