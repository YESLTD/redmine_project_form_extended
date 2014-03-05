resources :projects do
  post :unpublish_all, :on => :collection
end
