Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   scope '/api' do   
      resources :boxers
   end
   scope '/api' do   
      resources :heavyweights
   end
end
