class HomeController < ApplicationController
 
	def index
            @events=Event.where(publish:true).order(date: :asc).take(3)
	end

	def contactus
		# binding.pry




	end	

    def search

    end

	
end