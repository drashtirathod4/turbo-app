class MypostsController < ApplicationController
  before_action :set_mypost, only: %i[ show edit update destroy ]

  # GET /myposts or /myposts.json
  def index
    @myposts = Mypost.all
  end

  # GET /myposts/1 or /myposts/1.json
  def show
  end

  # GET /myposts/new
  def new
    @mypost = Mypost.new
  end

  # GET /myposts/1/edit
  def edit
  end

  # POST /myposts or /myposts.json
  def create
    @mypost = Mypost.new(mypost_params)

    respond_to do |format|
      if @mypost.save
        format.html { redirect_to mypost_url(@mypost), notice: "Mypost was successfully created." }
        format.json { render :show, status: :created, location: @mypost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mypost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myposts/1 or /myposts/1.json
  def update
    respond_to do |format|
      if @mypost.update(mypost_params)
        format.html { redirect_to mypost_url(@mypost), notice: "Mypost was successfully updated." }
        format.json { render :show, status: :ok, location: @mypost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mypost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myposts/1 or /myposts/1.json
  def destroy
    @mypost.destroy

    respond_to do |format|
      format.html { redirect_to myposts_url, notice: "Mypost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mypost
      @mypost = Mypost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mypost_params
      params.require(:mypost).permit(:body, :access, :passcode)
    end
end
