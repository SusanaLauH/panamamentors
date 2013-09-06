class MentorUsersController < ApplicationController
  # GET /mentor_users
  # GET /mentor_users.json
  def index
    @mentor_users = MentorUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mentor_users }
    end
  end

  # GET /mentor_users/1
  # GET /mentor_users/1.json
  def show
    @mentor_user = MentorUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mentor_user }
    end
  end

  # GET /mentor_users/new
  # GET /mentor_users/new.json
  def new
    @mentor_user = MentorUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mentor_user }
    end
  end

  # GET /mentor_users/1/edit
  def edit
    @mentor_user = MentorUser.find(params[:id])
  end

  # POST /mentor_users
  # POST /mentor_users.json
  def create
    @mentor_user = MentorUser.new(params[:mentor_user])

    respond_to do |format|
      if @mentor_user.save
        format.html { redirect_to @mentor_user, notice: 'Mentor user was successfully created.' }
        format.json { render json: @mentor_user, status: :created, location: @mentor_user }
      else
        format.html { render action: "new" }
        format.json { render json: @mentor_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mentor_users/1
  # PUT /mentor_users/1.json
  def update
    @mentor_user = MentorUser.find(params[:id])

    respond_to do |format|
      if @mentor_user.update_attributes(params[:mentor_user])
        format.html { redirect_to @mentor_user, notice: 'Mentor user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mentor_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mentor_users/1
  # DELETE /mentor_users/1.json
  def destroy
    @mentor_user = MentorUser.find(params[:id])
    @mentor_user.destroy

    respond_to do |format|
      format.html { redirect_to mentor_users_url }
      format.json { head :no_content }
    end
  end
end
