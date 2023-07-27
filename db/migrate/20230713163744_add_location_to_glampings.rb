class AddLocationToGlampings < ActiveRecord::Migration[7.0]
  def change
    add_column :glampings, :location, :string
  end
end
