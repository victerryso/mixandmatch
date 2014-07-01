# == Schema Information
#
# Table name: astros
#
#  id         :integer          not null, primary key
#  sign       :string(255)
#  about      :text
#  dailyfeed  :text
#  created_at :datetime
#  updated_at :datetime
#

class Astro < ActiveRecord::Base
  has_many :users
end
