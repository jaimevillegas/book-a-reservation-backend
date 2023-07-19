class ReservationController < ApplicationController
  before_action :read_reservation, only: [:destroy]
  skip_before_action :verify_authenticity_token, only: [:create]

  def index; end

  def list_reservations
    @user_name = User.pluck(:name)
    @reservation = Reservation.joins(:user).pluck(:reservation_date, :due_date, :service_fee, 'users.name', :glamping_id)

    render json: @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      render json: @reservation
    else
      render json: { error: @reservation.errors.full_messages }
    end
  end

  private

  def read_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:reservation_date, :due_date, :service_fee, :glamping_id, :user_id)
  end
end
