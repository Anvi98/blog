class CommentsController < ApplicationController
  def index
    @article = Article.find(params[:article_id])
  end

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    # redirect_to article_path(@article)
    render 'articles/show'
  end

  def edit
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
  end

  private 
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
