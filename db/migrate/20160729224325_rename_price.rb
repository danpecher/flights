class RenamePrice < ActiveRecord::Migration
  def change
  	rename_column :flights, :price_cents, :price
  end
end
