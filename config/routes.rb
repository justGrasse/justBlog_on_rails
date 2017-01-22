Rails.application.routes.draw do

  root :to => 'blog_posts#index'

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

  # users routes [  alt:  resources :users  ]
  get 'users/' => 'users#index'
  get 'users/new' => 'users#new',
        as: 'new_user'
  post 'users' => 'users#create'
  get 'users/:id' => 'users#show',
        as: 'user'
  get 'users/:id/edit' => 'users#edit',
        as: 'edit_user'
  put 'users/:id' => 'users#update'
  delete 'users/:id' => 'users#destroy'

end
