class BusinessesController < ApplicationController
  def new
    @business = Business.new
  end

  def show
    @business = Business.find(params[:id])
  end

  def create
    business = Business.create(business_params)
    current_user.businesses << business
    redirect_to business
  end

  private

  def business_params
    params.require(:business).permit(:name, :mission)
  end
end
