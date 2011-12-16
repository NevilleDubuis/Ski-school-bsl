xml.instruct!
xml.dates do
	@calendar.dates.each do |date| 
		xml.day do
			xml.date date
			start_day = date.to_datetime
			finish_day = start_day.end_of_day
			available_hours = @calendar.lessons_available.select{|k,v| (k > start_day && k < finish_day)}
			available_hours.each do |key, hour|
				xml.hour(:time => key.strftime("%H:%M")) do
					xml.availability hour
				end
			end
		end 
	end
end
