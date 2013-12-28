class HospitalsController < ApplicationController
  def new
  end

  def edit
  end

  def index
  	@hospitals = Hospital.paginate(page: params[:page])
  end

  def show
  end
end
