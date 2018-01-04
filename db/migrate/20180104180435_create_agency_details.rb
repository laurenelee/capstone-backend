class CreateAgencyDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :agency_details do |t|
      t.string :name
      t.integer :age_minimum
      t.string :volunteer_type
      t.decimal :lat_loc
      t.decimal :long_loc
      t.text :description

      t.timestamps
    end
  end
end
