class User < ApplicationRecord
has_many :reservations, dependent: :destroy
has_many :glampings, through: :reservations

validates :name, presence: true

end
