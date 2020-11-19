class Invoice < Document

  belongs_to :document

  def virtual_fields
    {
      'serial_number': 'serial_number',
      'discharge_date': 'discharge_date',
      'address': 'address',
      'price': 'price'
    }
  end
end