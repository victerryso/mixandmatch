class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.boolean :is_admin, :default => false
      t.string :firstname
      t.string :lastname
      t.string :gender
      t.string :preference
      t.date :birthday
      t.string :suburb
      t.string :cuisines
      t.string :hobbies
      t.text :about
      t.text :image
      t.integer :astro_id
      t.integer :lunar_id
      t.timestamps
    end
  end
end