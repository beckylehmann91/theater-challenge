class CustomerMailer < ApplicationMailer
  default from: 'sashafierce@thebestmovietheaterever.com'

  def confirmation_email(order)
    @order = order
    @url = new_showing_order_path(@order.showing, @order)
    mail(to: @order.email, subject: 'Your recent order - TheBestMovieTheaterEver')
  end
end
