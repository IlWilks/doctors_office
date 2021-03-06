class Patient < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :doctors, through: :appointments

  def full_name
  return "#{first_name} #{last_name}"
  end

end
