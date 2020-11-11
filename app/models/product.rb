class Product < ApplicationRecord
    scope :filter_by_name, -> (name) { where("name like ?", "%#{name}%") }
    scope :filter_by_manufacturer_id, -> (manufacturer_id) { where("manufacturer_id like ?", "%#{manufacturer_id}%") }
    scope :filter_by_barcode, -> (barcode) { where("barcode like ?", "%#{barcode}%") }
    validates :name, presence: true, uniqueness: true
    validates :barcode,  presence: true
    validates :barcode, numericality: { only_integer: true }
    validates :barcode, length: { is: 10}
    validates :manufacturer_id,  presence: true
    validates :manufacturer_id, numericality: { only_integer: true }
    belongs_to :manufacturer
    has_many :security_and_privacy_vulnerabilities, dependent: :destroy
end
