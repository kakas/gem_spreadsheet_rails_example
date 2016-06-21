Rails.application.routes.draw do
  resources :products do
    get :excel_export, on: :collection
  end

end
