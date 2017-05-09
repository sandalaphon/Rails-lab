class AddPlayerIdToContracts < ActiveRecord::Migration
  def change
    add_column :contracts, :player_id, :integer
  end
end
