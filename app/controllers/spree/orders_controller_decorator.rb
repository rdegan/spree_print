Spree::OrdersController.class_eval do
   def print_order
       @order = Spree::Order.find_by_number!(params[:order_number])
       respond_with(@order, :status => :ok) do |format|
         format.html {
           render :action => "print_order" ,:layout => false
         }
       end
   end
end