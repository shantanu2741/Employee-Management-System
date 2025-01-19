class Employee < ApplicationRecord
    validates :first_name, :last_name, presence: true
    validates :city, :state, :country, presence: true
    validates :email, presence: true, uniqueness: true
  
    def name
      "#{first_name} #{last_name}".strip
    end
  
    def address
      "#{city}, #{state}, #{country}"
    end
  end