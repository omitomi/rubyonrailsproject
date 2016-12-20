class TypesController < ApplicationController
  before_action :set_type, only: [:show, :edit, :update, :destroy]
  before_action :admin_user, only: [:new, :edit, :update, :destroy]
  # GET /types
  # GET /types.json
  def index
    @types = Type.all
  end

  # GET /types/1
  # GET /types/1.json
  def show
  end

  # GET /types/new
  def new
    @type = Type.new
  end

  # GET /types/1/edit
  def edit
  end

  # POST /types
  # POST /types.json
  def create
    @type = Type.new(type_params)
      if @type.save
        flash[:success] = "Категория успешно создана!"
        redirect_to @type
      else
        render 'new'
      end
  end

  # PATCH/PUT /types/1
  # PATCH/PUT /types/1.json
  def update
      if @type.update(type_params)
        flash[:success] = "Категория успешно обновлена!"
        redirect_to @type
      else
        render 'edit'
      end
  end

  # DELETE /types/1
  # DELETE /types/1.json
  def destroy
    @type.destroy
    redirect_to types_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type
      @type = Type.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_params
      params.require(:type).permit(:name, :description)
    end
end
