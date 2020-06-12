class SharedPlace < ApplicationRecord
  belongs_to :place
  belongs_to :user
end
