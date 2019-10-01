class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :serial
      t.string :name
      t.references :premise, foreign_key: true

      t.timestamps
    end
  end
end
