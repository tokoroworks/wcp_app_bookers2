class Relationship < ApplicationRecord
  belongs_to :follower, class_name:"User"
  belongs_to :followed, class_name:"User"
  has_many :follower, class_name:"User", foreign_key:"follower_id", dependent: :destroy
  has_many :followed, class_name:"User", foreign_key:"followed_id", dependent: :destroy
end
