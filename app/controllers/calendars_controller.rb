class CalendarsController < ApplicationController


  # GET /clients/2011-12-12/2011-12-19
  def index
    @calendar = Calendar.new(params[:start_date], params[:end_date]) 
    respond_to do |format|
      format.json { render json: @calendar.lessons_available }
    end
  end
end
