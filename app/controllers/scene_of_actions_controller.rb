class SceneOfActionsController < ApplicationController
  before_action :set_scene_of_action, only: [:show, :edit, :update, :destroy]
  before_action :admin_user, only: [:new, :edit, :update, :destroy]
  # GET /scene_of_actions
  # GET /scene_of_actions.json
  def index
    @scene_of_actions = SceneOfAction.all
  end

  # GET /scene_of_actions/1
  # GET /scene_of_actions/1.json
  def show
  end

  # GET /scene_of_actions/new
  def new
    @scene_of_action = SceneOfAction.new
  end

  # GET /scene_of_actions/1/edit
  def edit
  end

  # POST /scene_of_actions
  # POST /scene_of_actions.json
  def create
    @scene_of_action = SceneOfAction.new(scene_of_action_params)
      if @scene_of_action.save
        flash[:success] = "Место действия успешно создано!"
        redirect_to scene_of_actions_url
      else
        render 'new'
      end
  end

  # PATCH/PUT /scene_of_actions/1
  # PATCH/PUT /scene_of_actions/1.json
  def update
      if @scene_of_action.update(scene_of_action_params)
        flash[:success] = "Место действия успешно обновлено!"
        redirect_to scene_of_actions_url
      else
        render 'edit'
      end
  end

  # DELETE /scene_of_actions/1
  # DELETE /scene_of_actions/1.json
  def destroy
    @scene_of_action.destroy
    redirect_to scene_of_actions_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scene_of_action
      @scene_of_action = SceneOfAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scene_of_action_params
      params.require(:scene_of_action).permit(:name)
    end
end
