class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    session[:user_id] = 1
  end

  def show
    @movie = Movie.find(params[:id])
    @showings = @movie.showings
    @orders = @movie.orders
  end

  def new
    @movie = Movie.new
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def create
    @movie = Movie.create(movie_params)
    if @movie.save
      redirect_to @movie
    else
      @errors = @movie.errors.full_messages
      render 'new'
    end
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to @movie
    else
      @errors = @movie.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy

    redirect_to movies_path
  end

  private

  def movie_params
    params.require(:movie).permit(:title)
  end

end