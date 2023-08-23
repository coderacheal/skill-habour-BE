class AddForeignKeyReference < ActiveRecord::Migration[7.0]
  def change
      add_reference :reservations, :reservation, foreign_key: { to_table: :reservations }
  end
end

