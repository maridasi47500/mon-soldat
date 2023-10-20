class CreateGalons < ActiveRecord::Migration[7.0]
  def change
    create_table :galons do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
