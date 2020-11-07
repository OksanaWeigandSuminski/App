class Product < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :barcode,  presence: true
    validates :barcode, numericality: { only_integer: true }
    validates :barcode, length: { is: 10}
    validates :manufacturer_id,  presence: true
    validates :manufacturer_id, numericality: { only_integer: true }
    belongs_to :manufacturer
end
