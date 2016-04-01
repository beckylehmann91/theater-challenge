class CustomerMailer < ApplicationMailer
  default from: 'sashafierce@thebestmovietheaterever.com'

  def confirmation_email(order)
    @order = order
    mail(to: @order, subject: 'Your recent order - TheBestMovieTheaterEver')
  end
end
