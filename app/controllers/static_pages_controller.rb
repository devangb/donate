class StaticPagesController < ApplicationController
  def home
  	@hospital = current_hospital
  	@blooddonations = BankedBlood.paginate(page: params[:page])
  	@kidneydonations = Kidney.paginate(page: params[:page])
  	@user = current_user
  end

  def help
  end

  def contact
  end

  def about
  end
end
