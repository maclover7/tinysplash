class HomesController < ApplicationController
  def show
    if user_signed_in?
      render :show
    else
      render "pages/home"
    end
  end
end
