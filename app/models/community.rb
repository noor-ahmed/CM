class Community < ApplicationRecord
  has_one :item_feature, as: :itemable
  belongs_to :product
end
