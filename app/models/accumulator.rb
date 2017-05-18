class Accumulator < ApplicationRecord
  belongs_to :imageable, polymorphic: true
end
