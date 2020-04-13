class Thing < ApplicationRecord
  has_one_attached :file
end

Thing.record_timestamps = false
