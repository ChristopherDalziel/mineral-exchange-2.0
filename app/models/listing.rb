class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :type
  has_many :questions
  
  has_one_attached :picture
end
