class ShowingsController < ApplicationController

  before_action :require_login, except: [:index, :show]

  def index
    @showings = Showing.all
  end

  def show
    @showing = Showing.find(params[:id])
  end

  def new
    @showing = Showing.new
  end

  def edit
    @showing = Showing.find(params[:id])
  end

  def create
    @showing = Showing.create(showing_params)
    if @showing.save
      redirect_to @showing
    else
      @errors = @showing.errors.full_messages
      render 'new'
    end
  end

  def update
    @showing = Showing.find(params[:id])
    movie = Movie.find_by(title: params[:movie])
    auditorium = Auditorium.find_by(name: params[:auditorium])
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
    params.require(:showing).permit(:date, :time)
  end

end