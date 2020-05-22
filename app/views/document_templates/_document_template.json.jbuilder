json.extract! document_template, :id, :name, :owner_id, :doc, :created_at, :updated_at
json.url document_template_url(document_template, format: :json)
