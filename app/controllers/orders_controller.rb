class OrdersController < ApplicationController

  before_action :require_login, except: [:new, :create]

  def index
    @orders = Orders.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.create(order_params)
    if @order.save
      redirect_to @order
    else
      @errors = @order.errors.full_messages
      render 'new'
    end
  end

  private

  def order_params
    params.require(:order).permit(:showing_id, :name, :email, :credit_card, :card_expy_date)
  end

end