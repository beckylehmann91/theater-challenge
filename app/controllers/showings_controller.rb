class ShowingsController < ApplicationController

  def index
    @showings = Showing.all
  end

  def show
    @showing = Showing.find(params[:id])
    @order = Order.new
    @auditorium = @showing.auditorium
  end

  def new
    @showing = Showing.new
  end

  def edit
    @showing = Showing.find(params[:id])
  end

  def create
    auditorium = Auditorium.find_by(name: params[:showing][:auditorium])
    movie = Movie.find_by(title: params[:showing][:movie])
    # date = self.parsed_date_time(params[:showing][:date])
    # time = self.parsed_date_time(params[:showing][:time])
    @showing = Showing.create((showing_params).merge({ movie: movie, auditorium: auditorium }))
    if @showing.save
      puts "****************"
      p params
      puts "****************"
      redirect_to @showing
    else
      @errors = @showing.errors.full_messages
      render 'new'
    end
  end

  def update
    @showing = Showing.find(params[:id])
    movie = Movie.find_by(title: params[:showing][:movie])
    auditorium = Auditorium.find_by(name: params[:showing][:auditorium])
    if @showing.update((showing_params).merge({ movie: movie, auditorium: auditorium }))
      redirect_to @showing
    else
      @errors = @showing.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @showing = Showing.find(params[:id])
    @showing.destroy

    redirect_to showings_path
  end

  private

  def showing_params
    params.require(:showing).permit(:auditorium, :movie, :date, :time)
  end

end