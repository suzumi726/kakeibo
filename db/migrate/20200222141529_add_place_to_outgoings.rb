class AddPlaceToOutgoings < ActiveRecord::Migration[5.2]
  def change
    add_column :outgoings, :place, :string
  end
end
