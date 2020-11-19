class Act < Document

  belongs_to :document

  def virtual_fields
    {
      'document_name': 'document_name',  
      'serial_number': 'serial_number',
      'address': 'address'
    }
  end
end