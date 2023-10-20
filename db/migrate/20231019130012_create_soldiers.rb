class CreateSoldiers < ActiveRecord::Migration[7.0]
  def change
    create_table :soldiers do |t|
      t.string :name
      t.string :image
      t.integer :user_id
      t.integer :galon_id
      t.date :dateofbirth

      t.timestamps
    end
  end
end
