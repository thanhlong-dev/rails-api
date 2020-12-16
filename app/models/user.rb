class User < ApplicationRecord
  has_many :bookings, dependent: :destroy

  enum role: {user: 0, admin: 1}
end
