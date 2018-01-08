class ChangeLatLoc < ActiveRecord::Migration[5.1]
  def change
    remove_column :agency_details, :lat_loc
    remove_column :agency_details, :long_loc
    add_column :agency_details, :zip, :integer 
  end
end
