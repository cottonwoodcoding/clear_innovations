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
    render :new
  end

  def create
    @post = BlogPost.new(post_params)
    if @post.save
      redirect_to blog_posts_path
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to blog_posts_path
    else
      render :new
    end
  end

  def destroy
    @post.destroy
    redirect_to blog_posts_path
  end

  private
    def set_post
      @post = BlogPost.find(params[:id])
    end

    def post_params
      params.require(:blog_post).permit(:title, :content)
    end
end
