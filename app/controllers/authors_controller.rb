class AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :edit, :update, :destroy]
  before_action :admin_user, only: [:new, :edit, :update, :destroy]
  # GET /authors
  # GET /authors.json
  def index
    @authors = Author.all
  end

  # GET /authors/1
  # GET /authors/1.json
  def show
  end

  # GET /authors/new
  def new
    @author = Author.new
  end

  # GET /authors/1/edit
  def edit
  end

  # POST /authors
  # POST /authors.json
  def create
    @author = Author.new(author_params)
    if @author.save
      flash[:success] = "Автор успешно создан."
      redirect_to @author
    else
      render 'new'
    end
  end

  # PATCH/PUT /authors/1
  # PATCH/PUT /authors/1.json
  def update
    if @author.update(author_params)
      flash[:success] = "Автор успешно обновлен."
      redirect_to @author
    else
      render 'edit'
    end
  end

  # DELETE /authors/1
  # DELETE /authors/1.json
  def destroy
    @author.destroy
    redirect_to authors_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_author
      @author = Author.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def author_params
      params.require(:author).permit(:id, :name, :countries_id, :biography)
    end
end
