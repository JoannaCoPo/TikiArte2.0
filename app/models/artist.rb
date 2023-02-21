class Artist < ApplicationRecord
  belongs_to :director
  has_many :images, dependent: :destroy
  validates :username, uniqueness: true, presence: true
end
