class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.integer :price
      t.string :company

      t.timestamps null: false
    end
  end
end
