class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :chat_id
      t.string :username
      t.text :messages
      t.timestamps
    end
  end
end
