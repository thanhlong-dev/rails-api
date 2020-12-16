class CreateYards < ActiveRecord::Migration[6.0]
  def change
    create_table :yards do |t|
      t.string :code
      t.integer :type_yard
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
