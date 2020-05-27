class AddTotalPriceToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :total_price, :float
  end
end
