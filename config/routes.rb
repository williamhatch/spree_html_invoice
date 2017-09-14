Spree::Core::Engine.routes.append do
  namespace :admin do
    get 'invoice/:id(/:template)', to: 'invoice#show'
  end
end
