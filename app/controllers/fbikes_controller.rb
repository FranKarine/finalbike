class FbikesController < ApplicationController
  before_action :set_fbike, only: [:show, :edit, :update, :destroy]

  # GET /fbikes
  # GET /fbikes.json
  def index
    @fbikes = Fbike.all
    if params[:search]
        @fbikes=Fbike.search(params[:search])
        @fbikes=@fbikes.order("created_at ASC")
      else
        @fbikes=@fbikes.order("created_at DESC")
      end
  end



  # GET /fbikes/1
  # GET /fbikes/1.json
  def show
  end

  # GET /fbikes/new
  def new
    @fbike = Fbike.new
  end

  # GET /fbikes/1/edit
  def edit
  end

  # POST /fbikes
  # POST /fbikes.json
  def create
    @fbike = Fbike.new(fbike_params)

    respond_to do |format|
      if @fbike.save
        format.html { redirect_to @fbike, notice: 'Fbike was successfully created.' }
        format.json { render :show, status: :created, location: @fbike }
      else
        format.html { render :new }
        format.json { render json: @fbike.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fbikes/1
  # PATCH/PUT /fbikes/1.json
  def update
    respond_to do |format|
      if @fbike.update(fbike_params)
        format.html { redirect_to @fbike, notice: 'Fbike was successfully updated.' }
        format.json { render :show, status: :ok, location: @fbike }
      else
        format.html { render :edit }
        format.json { render json: @fbike.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fbikes/1
  # DELETE /fbikes/1.json
  def destroy
    @fbike.destroy
    respond_to do |format|
      format.html { redirect_to fbikes_url, notice: 'Fbike was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fbike
      @fbike = Fbike.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fbike_params
      params.require(:fbike).permit(:name, :description, :price, :image_url)
    end


      
      
end