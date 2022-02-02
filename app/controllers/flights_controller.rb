class FlightsController < ApplicationController
  def index
    @flights = Flight.search(params[:search])
    
    
  end
  def new
    if current_user.admin?
      @flight = Flight.new
      @airport_ids = Airport.ids
    else
      redirect_to('/')
    end
  end

  def create
     @flight = Flight.new(flight_params)

     if @flight.save
        redirect_to @flight
     else
        render :new, status: :unprocessable_entity
     end
  end




  private 
    def flight_params
      params.require(:flight).permit(:departure_code,:arrival_code,:available_seats,:total_seats,:duration,:start_date,:airport_id)

    end
end


