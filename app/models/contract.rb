class Contract < Document

  store_accessor :json_fields, :document_name, :customer, :executor

  def virtual_fields
    {
      'document_name': 'document_name', 
      'customer': 'customer',
      'executor': 'executor'
    }
  end
end