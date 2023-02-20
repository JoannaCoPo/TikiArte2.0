class AddArtistsToImages < ActiveRecord::Migration[7.0]
  def change
    add_reference :images, :artist, foreign_key: true
  end
end
