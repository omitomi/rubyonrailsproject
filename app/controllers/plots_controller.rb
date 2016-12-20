class PlotsController < ApplicationController
  before_action :set_plot, only: [:show, :edit, :update, :destroy]
  before_action :admin_user, only: [:new, :edit, :update, :destroy]
  # GET /plots
  # GET /plots.json
  def index
    @plots = Plot.all
  end

  # GET /plots/1
  # GET /plots/1.json
  def show
  end

  # GET /plots/new
  def new
    @plot = Plot.new
  end

  # GET /plots/1/edit
  def edit
  end

  # POST /plots
  # POST /plots.json
  def create
    @plot = Plot.new(plot_params)
      if @plot.save
        flash[:success] = "Сюжетный ход сохранен!"
        redirect_to plots_url
      else
        render 'new'
      end
  end

  # PATCH/PUT /plots/1
  # PATCH/PUT /plots/1.json
  def update
      if @plot.update(plot_params)
        flash[:success] = "Сюжетный ход обновлен!"
        redirect_to plots_url
      else
        render 'edit'
      end
  end

  # DELETE /plots/1
  # DELETE /plots/1.json
  def destroy
    @plot.destroy
    redirect_to plots_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plot
      @plot = Plot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plot_params
      params.require(:plot).permit(:name)
    end
end
