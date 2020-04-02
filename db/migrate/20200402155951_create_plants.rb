class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :plant_species
      t.string :nickname
      t.string :facts

      t.timestamps
    end
  end
end
