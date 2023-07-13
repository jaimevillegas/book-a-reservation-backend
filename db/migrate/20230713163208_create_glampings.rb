# frozen_string_literal: true

class CreateGlampings < ActiveRecord::Migration[7.0]
  def change
    create_table :glampings do |t|
      t.string :name
      t.string :glamping_type
      t.text :description
      t.string :image
      t.decimal :daily_rate

      t.timestamps
    end
  end
end
