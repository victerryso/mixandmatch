# == Schema Information
#
# Table name: restaurants
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  address    :string(255)
#  suburb     :string(255)
#  postcode   :integer
#  location   :text
#  cuisine    :string(255)
#  urbanspoon :text
#  created_at :datetime
#  updated_at :datetime
#

class Restaurant < ActiveRecord::Base
  has_and_belongs_to_many :users
end
