class Review < ApplicationRecord
  belongs_to :destination, :user
end
