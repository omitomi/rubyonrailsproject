class CountriesController < ApplicationController
  before_action :set_country, only: [:edit, :update, :destroy] #:show,
  before_action :admin_user, only: [:new, :edit, :update, :destroy]
  # GET /countries
  # GET /countries.json
  def index
    @countries = Country.all
  end

  # GET /countries/1
  # GET /countries/1.json
  #def show
  #end

  # GET /countries/new
  def new
    @country = Country.new
  end

  # GET /countries/1/edit
  def edit
  end

  # POST /countries
  # POST /countries.json
  def create
    @country = Country.new(country_params)
    if @country.save
      flash[:success] = "Страна сохранена!"
      redirect_to countries_url
    else
      render 'new'
    end
  end

  # PATCH/PUT /countries/1
  # PATCH/PUT /countries/1.json
  def update
      if @country.update(country_params)
        flash[:success] = "Страна обновлена!"
        redirect_to countries_url
      else
        render 'edit'
      end
  end

  # DELETE /countries/1
  # DELETE /countries/1.json
  def destroy
    @country.destroy
    redirect_to countries_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_country
      @country = Country.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def country_params
      params.require(:country).permit(:name)
    end

end
