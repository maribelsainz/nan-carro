class OrdersController < ApplicationController
  def create

    #Opción1
    order = Order.new(
      product_id: params[:product_id],
      user: current_user
    )

  order.save
  redirect_to root_path, notice: 'Producto agregado al carro!'
  end

  def cart
    @orders = current_user.orders
  end

end

#Opción 2
# current_user.product << Product.find(params[:product_id])




