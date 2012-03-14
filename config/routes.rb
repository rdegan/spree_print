Rails.application.routes.draw do
  # Add your extension routes here
  match 'orders/print/:id', :to => 'orders#print_order', :via => :get, :as => :printing
end
