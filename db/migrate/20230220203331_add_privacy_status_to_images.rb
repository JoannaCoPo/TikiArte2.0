class AddPrivacyStatusToImages < ActiveRecord::Migration[7.0]
  def change
    add_column :images, :privacy_status, :integer, default: 0
  end
end
