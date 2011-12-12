class CalendarController < ApplicationController


  # GET /clients.json/2011-12-12/2011-12-19
  def index
    (Date.today..(Date.today + 7.days)).each do |date|
      puts date
    end

    respond_to do |format|
      format.json { render json: @clients }
    end
  end
end
