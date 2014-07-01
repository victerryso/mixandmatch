class CreateLunars < ActiveRecord::Migration
  def change
    create_table :lunars do |t|
      t.string :animal
      t.text :about
      t.text :dailyfeed
      t.timestamps
    end
  end
end
