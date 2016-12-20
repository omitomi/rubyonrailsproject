class CommentsController < ApplicationController

  def new
  end
  def create
    @book = Book.find(params[:book_id])
    @comment = Comment.new(comment_params)
    @comment.book = @book
    @comment.user_id = current_user.id

    if @comment.save
      flash[:success] = "Комментарий создан!"
      redirect_to book_path(@book)
    else
      redirect_to book_path(@book)
    end
  end
  def destroy
    @comment.destroy
    redirect_to redirect_to book_path(@book)
  end
  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
