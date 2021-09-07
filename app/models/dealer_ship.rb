class DealerShip < ApplicationRecord
  has_many :cars, dependent: :destroy
end
