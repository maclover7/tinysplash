class BusinessesController < ApplicationController
  def index
    @businesses = current_user.businesses
  end

  def new
    @business = Business.new
  end

  def show
    @business = Business.friendly.find(params[:id])
  end

  def create
    @business = Business.new(business_params)
    if current_user.businesses << @business
      redirect_to @business
    else
      render :new
    end
  end

  private

  def business_params
    params.require(:business).permit(:name, :mission)
  end
end
