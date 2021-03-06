class StudentUsersController < ApplicationController
  #before_action :signed_in_user, only: [:edit, :update]
  #before_action :correct_user,   only: [:edit, :update]



  # GET /student_users
  # GET /student_users.json

  def signed_in_user
    redirect_to signin_url, notice: "Please sign in." unless signed_in?
  end

  def correct_user
    @student_users = StudentUser.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end



  def index
    @student_users = StudentUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @student_users }
    end
  end

  # GET /student_users/1
  # GET /student_users/1.json
  def show
    @student_user = StudentUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @student_user }
    end
  end

  # GET /student_users/new
  # GET /student_users/new.json
  def new
    @student_user = StudentUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @student_user }
    end
  end

  # GET /student_users/1/edit
  def edit
    @student_user = StudentUser.find(params[:id])
  end

  # POST /student_users
  # POST /student_users.json



  def create
    @student_user = StudentUser.new(params[:student_user])

    respond_to do |format|
      if @student_user.save
        #flash[:success] = "Welcome to Panama Mentors"
        #redirect_to @student_user, :notice => "Account created"
        format.html { redirect_to @student_user, notice: 'Student user was successfully created.' }
        format.json { render json: @student_user, status: :created, location: @student_user }


      else
        format.html { render action: "new" }
        format.json { render json: @student_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /student_users/1
  # PUT /student_users/1.json
  def update
    @student_user = StudentUser.find(params[:id])

    respond_to do |format|
      if @student_user.update_attributes(params[:student_user])
        format.html { redirect_to @student_user, notice: 'Student user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @student_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_users/1
  # DELETE /student_users/1.json
  def destroy
    @student_user = StudentUser.find(params[:id])
    @student_user.destroy

    respond_to do |format|
      format.html { redirect_to student_users_url }
      format.json { head :no_content }
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end


end
