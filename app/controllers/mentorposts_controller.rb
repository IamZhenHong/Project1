class MentorpostsController < ApplicationController
  before_action :set_mentorpost, only: %i[ show edit update destroy ]

  # GET /mentorposts or /mentorposts.json
  def index
    @mentorposts = Mentorpost.all
  end

  # GET /mentorposts/1 or /mentorposts/1.json
  def show
  end

  # GET /mentorposts/new
  def new
    @mentorpost = Mentorpost.new
  end

  # GET /mentorposts/1/edit
  def edit
  end

  # POST /mentorposts or /mentorposts.json
  def create
    @mentorpost = Mentorpost.new(mentorpost_params)

    respond_to do |format|
      if @mentorpost.save
        format.html { redirect_to mentorpost_url(@mentorpost), notice: "Mentorpost was successfully created." }
        format.json { render :show, status: :created, location: @mentorpost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mentorpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mentorposts/1 or /mentorposts/1.json
  def update
    respond_to do |format|
      if @mentorpost.update(mentorpost_params)
        format.html { redirect_to mentorpost_url(@mentorpost), notice: "Mentorpost was successfully updated." }
        format.json { render :show, status: :ok, location: @mentorpost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mentorpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mentorposts/1 or /mentorposts/1.json
  def destroy
    @mentorpost.destroy

    respond_to do |format|
      format.html { redirect_to mentorposts_url, notice: "Mentorpost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentorpost
      @mentorpost = Mentorpost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mentorpost_params
      params.require(:mentorpost).permit(:title, :body, :description, :credentials, :experience, :availability, :contact)
    end
    
end
