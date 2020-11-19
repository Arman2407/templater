module Accountable
  extend ActiveSupport::Concern

  included do
    has_many :bank_accounts, as: :accountable
  end
end
