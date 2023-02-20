class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.string :title
      t.string :description
      t.string :tags

      t.timestamps
    end
  end
end
