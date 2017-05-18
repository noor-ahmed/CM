class Product < ApplicationRecord
  has_one :item_feature, as: :itemable
  has_one :fnf
  has_one :community
end
