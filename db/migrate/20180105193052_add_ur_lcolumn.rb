class AddUrLcolumn < ActiveRecord::Migration[5.1]
  def change
    add_column :agency_details, :url, :string
  end
end
