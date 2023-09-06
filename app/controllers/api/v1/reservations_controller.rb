class Api::V1::ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[show update destroy]

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      render json: @reservation, status: :created
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  def index
    @user_reservations = Reservation.where(user_id: params[:user_id])
    render json: @user_reservations
  end

  def destroy
    if @reservation.destroy
      render json: { message: 'Reservation deleted successfully' }, status: :no_content
    else
      render json: { error: 'Unable to delete reservation' }, status: :unprocessable_entity
    end
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:course_name, :reservation_date, :price, :course_id, :user_id)
  end
end
