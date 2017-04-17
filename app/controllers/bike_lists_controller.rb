class BikeListsController < ApplicationController
  before_action :set_bike_list, only: [:show, :edit, :update, :destroy]

  # GET /bike_lists
  # GET /bike_lists.json
  def index
    @bike_lists = BikeList.all
  end

  # GET /bike_lists/1
  # GET /bike_lists/1.json
  def show
  end

  # GET /bike_lists/new
  def new
    @bike_list = BikeList.new
  end

  # GET /bike_lists/1/edit
  def edit
  end

  # POST /bike_lists
  # POST /bike_lists.json
  def create
    @bike_list = BikeList.new(bike_list_params)

    respond_to do |format|
      if @bike_list.save
        format.html { redirect_to @bike_list, notice: 'Bike list was successfully created.' }
        format.json { render :show, status: :created, location: @bike_list }
      else
        format.html { render :new }
        format.json { render json: @bike_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bike_lists/1
  # PATCH/PUT /bike_lists/1.json
  def update
    respond_to do |format|
      if @bike_list.update(bike_list_params)
        format.html { redirect_to @bike_list, notice: 'Bike list was successfully updated.' }
        format.json { render :show, status: :ok, location: @bike_list }
      else
        format.html { render :edit }
        format.json { render json: @bike_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bike_lists/1
  # DELETE /bike_lists/1.json
  def destroy
    @bike_list.destroy
    respond_to do |format|
      format.html { redirect_to bike_lists_url, notice: 'Bike list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bike_list
      @bike_list = BikeList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bike_list_params
      params.require(:bike_list).permit(:name, :type, :price, :image_url)
    end
end
