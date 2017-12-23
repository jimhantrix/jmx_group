class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.string :location
      t.string :rental
      t.integer :sleeps
      t.string :duration
      t.string :house_rules

      t.timestamps
    end
  end
end
