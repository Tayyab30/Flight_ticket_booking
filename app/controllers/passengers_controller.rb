class PassengersController < ApplicationController
    def new 
        @fid = params[:f_id]
        @passenger = Passenger.new
    end
    
    def create
        @passenger = Passenger.create(passenger_params)
        
        if @passenger.save
            @flight_id = params[:f_id]
            redirect_to("/ticket_details/new?pass_id=#{@passenger.id}&f_id=#{@flight_id}")
        end
    end
    def passenger_dtl
        if current_user.admin?
            flight = Flight.find(params[:f_id]) 
            passengers_ids = flight.ticket_detail.where(status: "Booked").pluck(:passenger_id)
            @passengers = Passenger.find(passengers_ids)
        else
            redirect_to('/')
        end    
    end

        private

        def passenger_params
            params.require(:passenger).permit(:first_name,:last_name,:email,:phone_number,:address)
        end
end
