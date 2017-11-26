class BlogPostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: :index

  def index
    @posts = BlogPost.order(created_at: :desc)
  end

  def new
    @post = BlogPost.new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private
    def set_post
      @post = BlogPost.find(params[:id])
    end

    def post_params
      params.require(:blog_post).permit(:title, :content)
    end
end
