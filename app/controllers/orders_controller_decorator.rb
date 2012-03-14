OrdersController.class_eval do
   def print_order
       @order = Order.find_by_number!(params[:id])
       respond_with(@order, :status => :ok) do |format|
         format.html {
           render :action => "print_order" ,:layout => false
         }
       end
   end
end