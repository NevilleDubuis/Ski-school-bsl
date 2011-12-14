class CalendarsController < ApplicationController


  # GET /clients.json/2011-12-12/2011-12-19
  def index
    @dates = []
    (params[:start_date]..params[:end_date]).each do |date|
      @dates.push date
    end
    
    @lessons_available = {}
    @dates.each do |date|
      possible = Availability.where("start_date <= :date AND end_date >= :date", {:date => date}).count
      booked = Reservation.where("start_date >= :date_begin AND end_date <= :date_end", {:date_begin => date.to_datetime, :date_end => date.to_datetime.end_of_day})
      day = date.to_datetime + 8.hours
      end_day = date.to_datetime + 17.hours
      
      while day < end_day
        lessons = possible
        booked.each do |book|
          if (book.start_date..book.end_date).cover?(day + 1.minute)
            lessons -= 1
          end
        end
        @lessons_available[day] = lessons 
        day = day +1.hour 
      end
    end

    respond_to do |format|
      format.html
      format.json { render json: @dates }
    end
  end
end
