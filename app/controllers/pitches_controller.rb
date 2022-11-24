class PitchesController < ApplicationController
  def index
    if params[:sport].present?
      @pitches = Pitch.where(sport: params[:sport])
      @markers = @pitches.geocoded.map do |pitch|
        {
          lat: pitch.latitude,
          lng: pitch.longitude
        }
      end
    else
      @pitches = Pitch.all
    end
  end

  def show
    @pitch = Pitch.find(params[:id])
  end

  def new
    @pitch = Pitch.new
  end

  def create
    @pitch = Pitch.new(pitch_params)
    @pitch.user = current_user
    if @pitch.save
      redirect_to pitch_path(@pitch)
    else
      render :new, status: :unprocessable_entity
    end
  end


    private
  def pitch_params
    params.require(:pitch).permit(:name, :address, :sport, :photo)
  end
end
