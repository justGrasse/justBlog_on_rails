class BlogPostsController < ApplicationController

  def index
    @blog_posts = BlogPost.all
  end

  def new
    @blog_post = BlogPost.new
  end

  def create
    BlogPost.create(params[:blog_post])
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

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
