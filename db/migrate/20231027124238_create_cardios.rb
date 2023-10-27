class CreateCardios < ActiveRecord::Migration[7.0]
  def change
    create_table :cardios do |t|
      t.integer :exercise_id
      t.time :duree
      t.integer :user_id

      t.timestamps
    end
  end
end
