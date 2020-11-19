json.extract! invoice, :id, :serial_number, :discharge_date, :adress, :price
json.url invoice_url(invoice, format: :json)