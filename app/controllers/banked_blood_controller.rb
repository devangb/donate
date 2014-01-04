class BankedBloodController < ApplicationController

  def new
  	@banked_blood = BankedBlood.new(banked_blood_params)
  def create
  	@hospital = Hospital.find(params[:id])
  	@banked_blood = BankedBlood.new(banked_blood_params)
     @banked_blood = current_user.banked_blood.build(banked_blood_params)
    if @banked_blood.save
      flash[:success] = "banked_blood created!"
      redirect_to root_url
    else
      render 'static_pages/home'
  	end
  end

  def update
  end

  def destroy
  end

  private

  def banked_blood_params
  	params.require(:banked_blood).permit(:donor, :donated_to, :date, :bloodgroup)
  end
end
