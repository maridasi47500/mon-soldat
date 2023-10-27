class CreateAbdos < ActiveRecord::Migration[7.0]
  def change
    create_table :abdos do |t|
      t.integer :user_id
      t.integer :exercise_id
      t.integer :nb

      t.timestamps
    end
  end
end
