class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :email
      t.integer :post_id
      t.text :content
      t.string :username

      t.timestamps
    end
  end
end
