class OrdersController < ApplicationController

  def index
    @orders = Orders.all
  end

  def show
    @showing = Showing.find(params[:showing_id])
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
    @showing = Showing.find(params[:showing_id])
  end

  def create
    @showing = Showing.find(params[:showing_id])
    @order = @showing.orders.create(order_params)
    if @order.save
      CustomerMailer.confirmation_email(@order).deliver_later
      redirect_to [@showing, @order]
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