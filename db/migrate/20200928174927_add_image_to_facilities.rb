class AddImageToFacilities < ActiveRecord::Migration[6.0]
  def change
    add_column :facilities, :image_url, :string
  end
end
