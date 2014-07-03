class CreateChatsMessages < ActiveRecord::Migration
  def change
    create_table :chats_messages do |t|
      t.integer :chat_id
      t.integer :message_id
    end
  end
end
