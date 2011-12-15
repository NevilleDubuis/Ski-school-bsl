class Reservation < ActiveRecord::Base
  has_many :lessons
end
