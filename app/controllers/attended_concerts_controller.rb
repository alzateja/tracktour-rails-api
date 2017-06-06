class AttendedConcertsController < ApplicationController
  before_action :set_attended_concert, only: [:show, :update, :destroy]

  # GET /attended_concerts
  def index
    @attended_concerts = AttendedConcert.all

    render json: @attended_concerts
  end

  # GET /attended_concerts/1
  def show
    render json: @attended_concert
  end

  # POST /attended_concerts
  def create
    @attended_concert = AttendedConcert.new(attended_concert_params)

    if @attended_concert.save
      render json: @attended_concert, status: :created, location: @attended_concert
    else
      render json: @attended_concert.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /attended_concerts/1
  def update
    if @attended_concert.update(attended_concert_params)
      render json: @attended_concert
    else
      render json: @attended_concert.errors, status: :unprocessable_entity
    end
  end

  # DELETE /attended_concerts/1
  def destroy
    @attended_concert.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attended_concert
      @attended_concert = AttendedConcert.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def attended_concert_params
      params.require(:attended_concert).permit(:wishlist_id, :concert_id, :concert_attendance_status)
    end
end
