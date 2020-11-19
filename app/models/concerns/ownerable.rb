module Ownerable
  extend ActiveSupport::Concern

  included do
    belongs_to :owner, class_name: "User"
  end
end
