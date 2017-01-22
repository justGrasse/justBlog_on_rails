Rails.application.routes.draw do

  # blog_posts routes [  alt:  resources :blog_posts  ]
  get 'blog_posts/' => 'blog_posts#index'
  get 'blog_posts/new' => 'blog_posts#new',
        as: 'new_blog_post'
  post 'blog_posts' => 'blog_posts#create'
  get 'blog_posts/:id' => 'blog_posts#show',
        as: 'blog_post'
  get 'blog_posts/:id/edit' => 'blog_posts#edit',
        as: 'edit_blog_post'
  put 'blog_posts/:id' => 'blog_posts#update'
  delete 'blog_posts/:id' => 'blog_posts#destroy'

end
