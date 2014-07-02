# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  password_digest :string(255)
#  is_admin        :boolean          default(FALSE)
#  firstname       :string(255)
#  lastname        :string(255)
#  gender          :string(255)
#  preference      :string(255)
#  birthday        :date
#  suburb          :string(255)
#  cuisines        :string(255)
#  hobbies         :string(255)
#  about           :text
#  image           :text
#  astro_id        :integer
#  lunar_id        :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
  zodiac_reader :birthday
  has_secure_password
  belongs_to :astro
  belongs_to :lunar
  has_and_belongs_to_many :chats
  has_and_belongs_to_many :restaurants
  validates :email, :presence => true, :length => { :minimum => 5 }, :uniqueness => true
  validates :password_digest, :presence => true, :length => { :minimum => 6 }
  validates :firstname, :presence => true
  validates :lastname, :presence => true
  validates :birthday, :presence => true
  validates :image, :presence => true
end
