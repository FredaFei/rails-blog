class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    if session[:user_id]
      @comment = @article.comments.create(comment_params)
      # @user = User.find(session[:user_id])
      # @comment.user = @user
      if @article.save
        flash[:success] = "Comments was successfully created"
      else
        flash[:error] = "Comments was fail created"
      end
      redirect_to article_path(@article)
    end
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    flash[:danger] = "comment was deleted"
    redirect_to article_path(@article)
  end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end
end
