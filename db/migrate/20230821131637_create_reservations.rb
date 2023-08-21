class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string :city
      t.datetime :reservation_date
      t.string :course_name

      t.timestamps
    end
  end
end
