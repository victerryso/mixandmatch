# == Schema Information
#
# Table name: lunars
#
#  id         :integer          not null, primary key
#  animal     :string(255)
#  about      :text
#  dailyfeed  :text
#  created_at :datetime
#  updated_at :datetime
#

class Lunar < ActiveRecord::Base
  has_many :users
end
