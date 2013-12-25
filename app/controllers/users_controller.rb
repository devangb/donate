class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  end

  def index
  	@users = User.search(params[:search], params[:group]).paginate(page: params[:page])

    respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @users }
    end
  end
end
