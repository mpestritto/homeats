class ChefsProfilesController < ApplicationController

  def check_user (id)
      if id != current_user.chefs_profile.id.to_s
        redirect_to root_path
      end    
  end

  # GET /chefs_profiles/1
  def show
    if current_user.chefs_profile == nil
      redirect_to new_chefs_profile_path
    else
      check_user params[:id]
      @chefs_profile = current_user.chefs_profile  
    end
  end

  # GET /chefs_profiles/new
  def new
    current_user.chefs_profile = ChefsProfile.new
    current_user.id = current_user.id
    @chefs_profile=current_user.chefs_profile
  end

  # GET /chefs_profiles/1/edit
  def edit
    check_user params[:id]
    @chefs_profile = current_user.chefs_profile
  end

  # POST /chefs_profiles
  def create
    @chefs_profile = ChefsProfile.new(params[:chefs_profile])

    if @chefs_profile.save
      redirect_to(@chefs_profile, :notice => 'Chefs profile was successfully created.')
    else
      render :action => "new"
    end
  end

  # PUT /chefs_profiles/1
  def update
    check_user params[:id]
    @chefs_profile = current_user.chefs_profile

    if @chefs_profile.update_attributes(params[:chefs_profile])
      redirect_to(@chefs_profile, :notice => 'Chefs profile was successfully updated.')
    else
      render :action => "edit"
    end
  end

end
