class HomeController < ApplicationController
 
	def index
            @events=Event.where(publish:true).order(date: :asc).take(3)
	end

	def contactus
	 
	end	

    def search
     @events=Event.where(publish:true).order(date: :desc).where("title LIKE ?","%#{params[:search_text]}%").page(params[:page])
    end

 

    def dashboard
        
        if(current_user.role.id==1)
            @events=Event.all.page(params[:page])
        elsif(current_user.role.id==2)
             @events=current_user.my_events.page(params[:page])
             
        else
            @events=current_user.events.page(params[:page])
        end

    end

	
end