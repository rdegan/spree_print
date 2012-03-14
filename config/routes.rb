Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  match 'orders/print/:order_number', :to => 'orders#print_order', :via => :get, :as => :printing
end

