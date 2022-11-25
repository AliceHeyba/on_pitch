class BookingsController < ApplicationController
  before_action :set_pitch, only: %i[new create index]

  def show
    set_booking
    @booking.save
    redirect_to booking_path(@booking)
  end

  def confirmation
    set_booking
  end

  def index
    @bookings = current_user.bookings
    @past_bookings = current_user.bookings.select do |booking|
      booking.end_date < Date.today
    end
    @future_bookings = current_user.bookings.select do |booking|
      booking.end_date > Date.today
    end
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.pitch = @pitch
    @booking.user = current_user
    if @booking.save!
      redirect_to booking_confirmation_path(@booking)
    else
      redirect_to pitch_path(@path), status: :unprocessable_entity
    end
  end

  private

  def set_pitch
    @pitch = Pitch.find(params[:pitch_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :pitch_id)
  end
end
