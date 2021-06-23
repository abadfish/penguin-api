class Api::GuestsController < ApplicationController 

  def index 
    @guests = Guest.all
    render json: @guests
  end

  def show 
    @guest = Guest.find(params[:id])
    render json: @guest
  end

  def create
    @guest = Guest.new(guest_params)
    if @guest.save
      render json: { 
        guest: @guest,
        message: 'rsvp successfully recorded'
      }
    else
      render json: {
        error: @guest.errors.full_messages
      }
    end
  end

  def update
    @guest = Guest.find(params[:id])
    @guest.update(guest_params)
    render json: @guest
  end

  private
  def guest_params
    params.require(:guest).permit(:full_name, :email, :rsvp, :attending, :notes)
  end


end