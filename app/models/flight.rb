class Flight < ApplicationRecord
    belongs_to :airport
    has_many :ticket_detail
    has_many :passenger, through: :ticket_detail

    
    def self.search(search)
        if search
            where(["departure_code LIKE ?", "%#{search}%"])
           
        else
            all
        end
    end
end
