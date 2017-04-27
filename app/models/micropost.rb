class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }
  
  
#  has_many :favorites foreign_key micropost_id
#  has_many :users, through: :favorites through: :user
end
