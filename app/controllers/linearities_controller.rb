class LinearitiesController < ApplicationController
  before_action :set_linearity, only: [:show, :edit, :update, :destroy]

  # GET /linearities
  # GET /linearities.json
  def index
    @linearities = Linearity.all
  end

  # GET /linearities/1
  # GET /linearities/1.json
  def show
  end

  # GET /linearities/new
  def new
    @linearity = Linearity.new
  end

  # GET /linearities/1/edit
  def edit
  end

  # POST /linearities
  # POST /linearities.json
  def create
    @linearity = Linearity.new(linearity_params)

      if @linearity.save
        flash[:success] = "Объект сохранен!"
        redirect_to linearities_url
      else
        render 'new'
      end
  end

  # PATCH/PUT /linearities/1
  # PATCH/PUT /linearities/1.json
  def update
      if @linearity.update(linearity_params)
        flash[:success] = "Объект обновлен!"
        redirect_to linearities_url
      else
        render 'edit'
      end
  end

  # DELETE /linearities/1
  # DELETE /linearities/1.json
  def destroy
    @linearity.destroy
      redirect_to linearities_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_linearity
      @linearity = Linearity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def linearity_params
      params.require(:linearity).permit(:name)
    end
end
