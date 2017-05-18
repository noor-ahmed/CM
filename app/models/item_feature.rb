class ItemFeature < ApplicationRecord
  belongs_to :itemable, polymorphic: true
end
