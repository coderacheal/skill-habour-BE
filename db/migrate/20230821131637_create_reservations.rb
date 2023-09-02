class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string :course_name
      t.datetime :reservation_date
      t.integer :price

      t.timestamps
    end
  end
end
