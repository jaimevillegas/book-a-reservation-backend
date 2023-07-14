class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :glamping

  validates :glamping_id, presence: true
  validates :user_id, presence: true
  validates :reservation_date, presence: true
  validates :due_date, presence: true
  validates :service_fee, presence: true
end
