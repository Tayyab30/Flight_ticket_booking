class TicketDetailsController < ApplicationController
  def new

    @ticket_detail = TicketDetail.new 
    
  end
  def create
    @ticket_detail = TicketDetail.new(ticket_params)
    if @ticket_detail.save
      redirect_to('/')
    end
  end
private
  def ticket_params
    params.require(:ticket_detail).permit(:flight_id,:passenger_id,:status)
  end 
end
