class Artist < ApplicationRecord
  belongs_to :director
  has_many :images, dependent: :destroy
  validates :username, uniqueness: true, presence: true

  # may add ability for artist to log into their own account
  # validates :password, presence: true
  # has_secure_password
end
