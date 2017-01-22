Rails.application.routes.draw do

  get 'static/info'

  get 'info' => 'static#info'

end
