class Api::V1::UsersController < ApplicationController

  def create
    user_params #{phone_number: string, state: string, district: string}
    state = State.find_by(abbreviation: user_params[:state])
    user = User.new(phone_number: user_params[:phone_number], state: state, district: state.getUserDistrict(user_params[:district]))

    user.save
    render json: user, status: 200
  end


  private


  def user_params
    params.require(:user).permit(:state, :phone_number, :district)
  end

end
