class Calendar 
  attr_accessor :lessons_available, :dates  

  def initialize (start_date, end_date)
    @dates = []
    date = start_date.to_date
    until date == end_date.to_date
      @dates.push date
      date = date + 1.day
    end
    
    lessons_temp = {}
    @dates.each do |date|
      possible = Availability.where("start_date <= :date AND end_date >= :date", {:date => date}).count
      booked = Lesson.where("day = :date", {:date => date})
      day = date.to_datetime + 8.hours
      end_day = date.to_datetime + 17.hours
      
      while day < end_day
        lessons = possible
        booked.each do |book|
          start = book.start.strftime("%H").to_i
          start_date = date.to_datetime + start.hours
          end_date = date.to_datetime + start.hours + book.nhours.hours
          if (start_date..end_date).cover?(day + 1.minute)
            lessons -= 1
          end
        end
        lessons_temp[day] = lessons 
        day = day +1.hour 
      end
      @lessons_available = lessons_temp
    end
  end  
end
