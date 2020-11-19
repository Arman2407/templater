class Document < ApplicationRecord
  include Ownerable

  belongs_to :template, class_name: "DocumentTemplate"
  belongs_to :business
  belongs_to :counterparty

  has_one_attached :doc

  store_accessor :json_fields, :name, :surname, :type, :date

  def date
    return Time.zone.parse(super) if super.is_a?(String)
  end

  def virtual_fields 
    {
    'name': 'first_name', 
    'surname': 'second_name', 
    'type': 'string',
    'date': 'date'
    }
  end  

 
end
