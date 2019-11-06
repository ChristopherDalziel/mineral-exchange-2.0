class UserDetail < ApplicationRecord
  belongs_to :user
  belongs_to :state
  has_many :states

end
