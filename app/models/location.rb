class Location < ApplicationRecord
  belongs_to :user
  has_many :shared_locations, inverse_of: :location
end
