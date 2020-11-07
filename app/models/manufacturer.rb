class Manufacturer < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :street_address, presence: true
    validates :city, presence: true
    validates :state, presence: true
    validates :postal_code, presence: true
    validates :postal_code, numericality: { only_integer: true }
    validates :postal_code, length: { is: 5}
    validates :country_or_region, presence: true
    validates :phone,  presence: true
    validates :phone, numericality: { only_integer: true }
    validates :phone, length: { is: 10}
    validates :email, presence: true
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
    has_many :products, dependent: :destroy
end
