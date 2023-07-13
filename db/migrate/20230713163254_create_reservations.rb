# frozen_string_literal: true

class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.date :reservation_date
      t.date :due_date
      t.decimal :service_fee
      t.references :user, null: false, foreign_key: true
      t.references :glamping, null: false, foreign_key: true

      t.timestamps
    end
  end
end
