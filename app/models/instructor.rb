class Instructor < ActiveRecord::Base
  belongs_to :person
  has_many :availabilities
  
end
