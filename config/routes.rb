Rails.application.routes.draw do
    
  root :to => 'rides#index'

    resources: taxiproviders
    resources: rides
end
