# == Schema Information
#
# Table name: chats
#
#  id         :integer          not null, primary key
#  user1_id   :integer
#  user2_id   :integer
#  messages   :text
#  created_at :datetime
#  updated_at :datetime
#

class Chat < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_and_belongs_to_many :messages
end
