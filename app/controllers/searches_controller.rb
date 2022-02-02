class SearchesController < ApplicationController
    def new
        @search = Search.new
    end

    def create
        @search = Search.create(search_params)
        redirect_to @search
    end

    def show
        @search = Search.find([params[:id]])
    end

    private
        def search_params
            params.require(:search).permit(:departure_code,:arrival_code, :start_date, :passenger)
        end    
end
    