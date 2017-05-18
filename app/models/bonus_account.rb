class BonusAccount < ApplicationRecord
  has_one :item_feature, as: :itemable
  has_one :accumulator, as: :imageable
  has_one :priority, as: :prioritize
  belongs_to :user_account
end
