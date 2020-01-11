class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    @product = Product.find(params[:product_id])
    @order = Order.new(product: @product, user: current_user)
    if @order.save
      redirect_to products_path, notice: 'El producto se ha añadido a tu carrito de compra'
    else
      redirect_to products_path, alert: 'Ha ocurrido un error :('
    end
  end

  def index
    @orders = current_user.orders

  end
end
