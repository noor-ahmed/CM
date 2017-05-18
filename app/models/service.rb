class Service < ApplicationRecord
  has_one :item_feature, as: :itemable
end
