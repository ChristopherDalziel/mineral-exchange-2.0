class UserDetail < ApplicationRecord
  belongs_to :user
  belongs_to :state
  has_many :states

  validates :contact_number, numericality: true

  validates :first_name, :lastname, :address_line_1, :suburb, presence: true

  validates :postcode, numericality: true,
                        length: { is: 4 }

end
