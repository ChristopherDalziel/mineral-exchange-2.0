class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :type
  has_many :questions, dependent: :destroy

  validates :mineral_name, :location, presence: true

  validates :description, presence: true, 
              length: { minimum: 10 }

  # validates :price, numericality: true

  # validates :state, inclusion: { in: %w(VIC NSW WA TAS NT ACT QLD SA), :message => "%{value} is not a valid state" } 
  
  has_one_attached :picture
end