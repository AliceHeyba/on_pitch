class BookingsController < ApplicationController
  before_action :set_pitch, only: %i[new create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.pitch = @pitch
    if @booking.save
      redirect_to pitch_path(@pitch)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_pitch
    @pitch = Pitch.find(params[:pitch_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :pitch_id)
  end
end
