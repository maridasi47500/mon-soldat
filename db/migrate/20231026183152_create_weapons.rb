class CreateWeapons < ActiveRecord::Migration[7.0]
  def change
    create_table :weapons do |t|
      t.integer :city_id
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
