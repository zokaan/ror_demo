class OrdersController < ApplicationController
  before_action :authorize

  def index
    if params[:user_id]
      @orders = Order.where(user_id: params[:user_id])
    elsif params[:product_id]
      @orders = Order.where(product_id: params[:product_id])
    else
      @orders = Order.all
    end
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    # @order.user_id = logged_in_user.id
    @order.user = logged_in_user

    if @order.save
      redirect_to orders_path
    else
      render :new
    end
  end

  def destroy
    Order.destroy(params[:id])
    redirect_to orders_path
  end

  private

    def order_params
      params.require(:order).permit(:product_id, :quantity)
    end
end
