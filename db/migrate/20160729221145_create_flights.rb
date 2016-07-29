class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :price_cents
      t.datetime :time
    end
  end
end
