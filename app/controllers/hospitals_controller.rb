class HospitalsController < ApplicationController
  def new
  end

  def edit
  end

  def index
  	@hospitals = Hospital.paginate(page: params[:page])
  end

  def show
  	@hospital = Hospital.find(params[:id])
    @banked_blood = BankedBlood.new
  end
end
