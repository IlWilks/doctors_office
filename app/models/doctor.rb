class Doctor < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :patients, through: :appointments

  def title
  return "Doctor #{self.name}"
  end

end


