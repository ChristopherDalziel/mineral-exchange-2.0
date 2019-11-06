class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :type
  has_many :questions, dependent: :destroy

  enum sold: { yes: 0, no: 1 }

  validates :mineral_name, :location, presence: true

  validates :description, presence: true, 
              length: { minimum: 10 }

  validates :price, numericality: true
  
  has_one_attached :picture
end