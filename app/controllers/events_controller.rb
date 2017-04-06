class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:edit,:update,:new,:create,:destroy]
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :check_user, only:[:edit,:update,:destroy]

  def index
    @events=Event.all
  end

  def show	
  end

  def new
   @event=Event.new
  end

   def create
   # render plain: params[:event].inspect
   # binding.pry
   @event=Event.new(event_params)
   @event.created_by=current_user.id
   respond_to do |format|
    if(@event.save)
     format.html{ redirect_to @event, notice:"Event was successfully created"}
   else
    format.html {render :new}
   end
   end


   end

   def edit
   end

   def update
    respond_to do |format|
      if(@event.update(event_params))
         format.html { redirect_to @event, notice: "Event was successfully updated" }
       else
        format.html {render :edit}
      end
      
    end
   end

   def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_path,notice: 'Event has been deleted successfully'}
    end
   end


   private 

    def set_event 
    @event=Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:title,:location,:date,:description,:eventtype,:publish)
    end

    def check_user
      if(current_user.id!=@event.created_by)
       respond_to do |format|
      format.html { redirect_to events_path,notice: 'User not authorized'}
       end
     end
    end
	
	
end