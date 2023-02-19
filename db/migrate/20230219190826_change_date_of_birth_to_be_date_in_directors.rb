class ChangeDateOfBirthToBeDateInDirectors < ActiveRecord::Migration[7.0]
  def change
    remove_column :directors, :date_of_birth    
    add_column :directors, :date_of_birth, :date
  end
end
