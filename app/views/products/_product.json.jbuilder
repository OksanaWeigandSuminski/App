json.extract! product, :id, :name, :barcode, :manufacturer_id, :created_at, :updated_at
json.url product_url(product, format: :json)
