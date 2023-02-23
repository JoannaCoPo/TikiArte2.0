class Image < ApplicationRecord
  belongs_to :artist

  enum :privacy_status, [:fully_private, :members_only, :public_feed]
end
