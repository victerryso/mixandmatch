# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  chat_id    :integer
#  username   :string(255)
#  messages   :text
#  created_at :datetime
#  updated_at :datetime
#

class Message < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_and_belongs_to_many :chats
end
