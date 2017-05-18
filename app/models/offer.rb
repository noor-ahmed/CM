class Offer < ApplicationRecord
  has_one :item_feature, as: :itemable
  has_one :accumulator, as: :imageable
  has_one :priority, as: :prioritize
  has_many :user_offers
  has_many :user_account, through: :user_offers
end
