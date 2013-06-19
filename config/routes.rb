Cboard::Application.routes.draw do

  resources :cheeses, :only => [] do
    get '/' => 'site#show_cheese', :as => :show
  end

  post "ratings" => "site#ratings"
  get "ratings_list" => "site#ratings_list"
  post "signup" => "site#signup", :as => :signup
  post "login"  => "site#login"
  get "logout" => "site#logout"
  get "filter_sort" => "site#filter_sort"

  root :to => 'site#index'
  
end
