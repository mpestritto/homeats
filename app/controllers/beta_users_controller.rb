class BetaUsersController < ApplicationController
  # GET /beta_users
  # GET /beta_users.xml
  def index
    @beta_users = BetaUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @beta_users }
    end
  end

  # GET /beta_users/1
  # GET /beta_users/1.xml
  def show
    @beta_user = BetaUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @beta_user }
    end
  end

  # GET /beta_users/new
  # GET /beta_users/new.xml
  def new
    @beta_user = BetaUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @beta_user }
    end
  end

  # GET /beta_users/1/edit
  def edit
    @beta_user = BetaUser.find(params[:id])
  end

  # POST /beta_users
  # POST /beta_users.xml
  def create
    @beta_user = BetaUser.new(params[:beta_user])

    respond_to do |format|
      if @beta_user.save
        format.html { redirect_to(@beta_user, :notice => 'Beta user was successfully created.') }
        format.xml  { render :xml => @beta_user, :status => :created, :location => @beta_user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @beta_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /beta_users/1
  # PUT /beta_users/1.xml
  def update
    @beta_user = BetaUser.find(params[:id])

    respond_to do |format|
      if @beta_user.update_attributes(params[:beta_user])
        format.html { redirect_to(@beta_user, :notice => 'Beta user was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @beta_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /beta_users/1
  # DELETE /beta_users/1.xml
  def destroy
    @beta_user = BetaUser.find(params[:id])
    @beta_user.destroy

    respond_to do |format|
      format.html { redirect_to(beta_users_url) }
      format.xml  { head :ok }
    end
  end
end
