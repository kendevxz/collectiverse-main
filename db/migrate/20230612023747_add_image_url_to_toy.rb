class AddImageUrlToToy < ActiveRecord::Migration[7.0]
  def change
    add_column :toys, :image_url, :string
  end
end
