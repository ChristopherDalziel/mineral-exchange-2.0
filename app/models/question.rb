class Question < ApplicationRecord
  belongs_to :listing
  has_many :answers
end
