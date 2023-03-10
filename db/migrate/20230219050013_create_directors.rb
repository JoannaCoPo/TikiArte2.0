class CreateDirectors < ActiveRecord::Migration[7.0]
  def change
    create_table :directors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :token
      t.string :google_id
      t.string :date_of_birth

      t.timestamps
    end
  end
end
