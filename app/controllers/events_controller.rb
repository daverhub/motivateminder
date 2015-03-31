class EventsController < ApplicationController
  before_action :authenticate_user!
  def index
    @events = Event.all.limit(10)
  end
  def show
    @event = Event.find(params[:id])
  end
  def new
    @event = Event.new
  end
  def create
    @event = Event.new
    binding.pry
    @event = current_user.events.build(event_params)

    if @event.save
        flash[:notice] ='Event was successfully created.'
        redirect_to @event

    else
        flash[:notice] ='Event was not saved.'
        render :new
    end
  end
  def edit

  end
  def update

  end
  def destroy

  end

  protected
  def event_params
    params.require(:event).permit(:title, :details, :date, :time)
  end

end
