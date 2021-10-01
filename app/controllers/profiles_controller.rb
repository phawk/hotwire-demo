class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  # GET /profiles
  def index
    @profiles = Profile.all
  end

  # GET /profiles/1
  def show
  end

  # GET /profiles/new
  def new
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit
  end

  # POST /profiles
  def create
    @profile = Profile.new(profile_params)

    if @profile.save
      redirect_to @profile, notice: 'Profile was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /profiles/1
  def update
    if @profile.update(profile_params)
      flash[:error] = "Something bad happened."
      redirect_to @profile
    else
      render(
        turbo_stream: turbo_stream.update(
          "profile_form",
          partial: "profiles/form",
          locals: {
            profile: @profile
          }
        ))
    end
  end

  # DELETE /profiles/1
  def destroy
    @profile.destroy
    redirect_to profiles_url, notice: 'Profile was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def profile_params
      params.require(:profile).permit(:name, :phone, :email, :title, :team, :about)
    end
end
