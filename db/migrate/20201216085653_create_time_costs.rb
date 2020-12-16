class CreateTimeCosts < ActiveRecord::Migration[6.0]
  def change
    create_table :time_costs do |t|
      t.string :time
      t.float :cost
      t.references :yard, null: false, foreign_key: true

      t.timestamps
    end
  end
end
