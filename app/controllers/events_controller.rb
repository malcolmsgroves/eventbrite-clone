class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
    @invitees = @event.invitees
  end

  def create
    @event = current_user.hosted_events.build(user_params)
    if @event.save
      redirect_to @event.host
    else
      render 'new'
    end
  end

  def index
    @events = Event.paginate(:page => params[:page]).order(date: :desc)
  end

  private
    def user_params
      params.require(:event).permit(:name, :date, :location)
    end
end
