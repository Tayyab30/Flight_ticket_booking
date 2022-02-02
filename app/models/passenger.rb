class Passenger < ApplicationRecord
    has_many :ticket_detail
    has_many :flight, through: :ticket_detail
end
