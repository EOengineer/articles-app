class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update]
  before_action :set_parent


  def index
    @comments = @article.comments
  end

  def show
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to article_comments_path(@article)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @comment.update(comment_params)
      redirect_to article_comments_path(@article)
    else
      render 'edit'
    end
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def set_parent
    @article = Article.find(params[:article_id]) if params[:article_id].present?
  end

  def comment_params
    params.require(:comment).permit(:body, :article_id)
  end
end
