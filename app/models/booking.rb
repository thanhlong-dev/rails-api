class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :time_cost

  enum status: {pending: 0, accept: 1, rejected: 2, cancel: 3}
end
