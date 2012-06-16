WdSample::Application.routes.draw do
  resources :products, :only => :index
end
