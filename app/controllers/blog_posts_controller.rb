class BlogPostsController < ApplicationController

  def index
    @blog_posts = BlogPost.all
  end

  def new
    @blog_post = BlogPost.new
  end

  def create
    @blog_post = BlogPost.new(blog_post_params)
    if @blog_post.save
      redirect_to @blog_post, notice: 'justBlog successful!'
    else
      render :new
    end
  end

  def show
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def blog_post_params
    params.require(:blog_post).permit(:title, :body)
  end

end

#
# get 'blog_posts/' => 'blog_posts#index'
# get 'blog_posts/new' => 'blog_posts#new',
#       as: 'new_blog_post'
# post 'blog_posts' => 'blog_posts#create'
# get 'blog_posts/:id' => 'blog_posts#show',
#       as: 'blog_post'
# get 'blog_posts/:id/edit' => 'blog_posts#edit',
#       as: 'edit_blog_post'
# put 'blog_posts/:id' => 'blog_posts#update'
# delete 'blog_posts/:id' => 'blog_posts#destroy'
