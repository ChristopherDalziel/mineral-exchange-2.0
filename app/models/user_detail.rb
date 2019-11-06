class UserDetail < ApplicationRecord
  belongs_to :user
  belongs_to :state
  has_many :states

  validates :state, inclusion: { in: %w(VIC NSW WA TAS NT ACT QLD SA), :message => "%{value} is not a valid state" } 
  
end
