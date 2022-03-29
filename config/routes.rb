Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      # resources :articles if we are doing api/v1/1/articles dont use need to nest under parent
      resources :categories do
        resources :articles #only use article routes nested in category
      end
    end
  end

end
