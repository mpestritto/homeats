class BetaUsersController < ApplicationController
  # GET /beta_users
  # GET /beta_users.xml
=begin

  def index
    @beta_users = BetaUser.all

    respond_to do |format|
      format.html # index.html.erb
      #format.xml  { render :xml => @beta_users }
      format.xml  { head :ok }
      #format.xml  { render :xml => @beta_user, :status => :created, :location => @beta_user }
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
=end

  # GET /beta_users/new
  # GET /beta_users/new.xml
  def new
    @beta_user = BetaUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @beta_user }
    end
  end
=begin

  # GET /beta_users/1/edit
  def edit
    @beta_user = BetaUser.find(params[:id])
  end
=end

  # POST /beta_users
  # POST /beta_users.xml
  def create

    #isValidEmail = params[:beta_user].match(BetaUsersHelper);

    isValidEmail = true;
    if (isValidEmail)
      @beta_user = BetaUser.new(params[:beta_user])
    end

  respond_to do |format|
      if (isValidEmail == false)
        format.html { redirect_to "/beta_users/new", notice: 'Please enter valid email address' }
        format.json { render json: @beta_user.errors, status: :unprocessable_entity }
      elsif (@beta_user.save)
        #format.html { render action: "new" }
        format.html { redirect_to "/beta_users/new", notice: @beta_user.email << '  .Thanks for signing up.' }
        format.json { render json: @beta_user, status: :created, location: @beta_user }
      else
        format.html { render action: "new" }
        format.json { render json: @beta_user.errors, status: :unprocessable_entity }
      end
    end

  end


=begin
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
=end
end
