class AddSponsorIdToContracts < ActiveRecord::Migration
  def change
    add_column :contracts, :sponsor_id, :integer
  end
end
