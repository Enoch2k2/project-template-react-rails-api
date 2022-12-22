class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :trail_name
      t.string :city

      t.timestamps
    end
  end
end