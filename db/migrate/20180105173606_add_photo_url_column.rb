class AddPhotoUrlColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :agency_details, :photo_url, :string
  end
end
