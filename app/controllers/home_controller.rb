class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @cars = Car.all.order(home_params[:sort])
  end

  def home_params
    params.permit(:sort)
  end
end
