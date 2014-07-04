# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  chat_id    :integer
#  user_id    :string(255)
#  message    :text
#  created_at :datetime
#  updated_at :datetime
#

class Message < ActiveRecord::Base
  belongs_to :chat
  belongs_to :user
end
