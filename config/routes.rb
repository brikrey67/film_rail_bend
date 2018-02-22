Rails.application.routes.draw do 
  namespace :api do 
    namespace :v1 do 
      resources :items, only: [:index, :show, :create, :destroy, :update] 
    end 
  end 
end

Read more at https://www.pluralsight.com/guides/ruby-ruby-on-rails/building-a-crud-interface-with-react-and-ruby-on-rails#TVkVsTKbla0ZQCM4.99