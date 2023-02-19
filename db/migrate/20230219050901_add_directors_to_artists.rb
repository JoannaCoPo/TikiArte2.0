class AddDirectorsToArtists < ActiveRecord::Migration[7.0]
  def change
    add_reference :artists, :director, foreign_key: true
  end
end
