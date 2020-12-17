class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :status, default: 0
      t.references :user, null: false, foreign_key: true
      t.references :time_cost, null: false, foreign_key: true

      t.timestamps
    end
  end
end
