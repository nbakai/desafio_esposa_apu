Rails.application.routes.draw do
  
  resources :babies, except: [:edit, :updated] do
    get 'breastfeedings/:id', to: 'breastfeedings#show', as: 'breastfeeding'
  end
  resources :breastfeedings
 
  
  root to: 'babies#index'
  resources :babies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
