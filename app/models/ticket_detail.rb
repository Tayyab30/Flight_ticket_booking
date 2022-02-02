class TicketDetail < ApplicationRecord
    belongs_to :flight
    belongs_to :passenger

    validates :status, acceptance: { accept: ['Booked', 'Cancel'] }
    # enum status: [:Booked,:Cancel]
end
