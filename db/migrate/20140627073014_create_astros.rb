class CreateAstros < ActiveRecord::Migration
  def change
    create_table :astros do |t|
      t.string :sign
      t.text :about
      t.text :dailyfeed
      t.timestamps
    end
  end
end