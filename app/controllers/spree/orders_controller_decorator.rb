Spree::OrdersController.class_eval do
   def print_order
       @order = Spree::Order.find_by_number!(params[:order_number])
       respond_with(@order, :status => :ok,:layout => false) do |format|
         format.html 
       end
   end
end