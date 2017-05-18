class Priority < ApplicationRecord
  belongs_to :prioritize, polymorphic: true
end
