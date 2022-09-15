class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_end
      t.references :listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
