class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @feed_items  = Book.where("user_id = ?", current_user.id);
      @comment_user = Comment.where("user_id = ?", current_user.id);
      #@feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
