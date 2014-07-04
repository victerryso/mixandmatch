# == Schema Information
#
# Table name: chats
#
#  id         :integer          not null, primary key
#  user1_id   :integer
#  user2_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Chat < ActiveRecord::Base
  belongs_to :user
  has_many :message
end
