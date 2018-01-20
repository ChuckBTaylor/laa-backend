class Api::V1::UsersController < ApplicationController

  def create
    params #{phone_number: string, state: string, district: string}
    state = State.find_by(abbreviation: params[:state])
    user = User.new(phone_number: params[:phone_number], state: state, district: state.getUserDistrict(params[:district]))
    
    user.save
    render json: user, status: 200
  end

end
