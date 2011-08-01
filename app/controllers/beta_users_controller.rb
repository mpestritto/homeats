class BetaUsersController < ApplicationController
  # GET /beta_users/new
  def new
    @beta_user = BetaUser.new

  end

  # POST /beta_users
  def create

    @beta_user = BetaUser.new(params[:beta_user])

    if (@beta_user.save)
      redirect_to new_beta_user_path, notice: @beta_user.email << '.  Thanks for signing up.  You will be notified when beta opens.'
    else
      render action: "new"
    end
  end
  
end
