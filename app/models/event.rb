class Event < ApplicationRecord
	validates:title,presence:true
	validates:location,presence:{message:'required'}
 
end
