class AuditoriaController < ApplicationController

  before_action :require_login, except: [:index, :show]

  def index
    @auditoria = Auditoria.all
  end

  def show
    @auditorium = Auditorium.find(params[:id])
  end

  def new
    @auditorium = Auditorium.new
  end

  def edit
    @auditorium = Auditorium.find(params[:id])
  end

  def create
    @auditorium = Auditorium.create(auditorium_params)
    if @auditorium.save
      redirect_to @auditorium
    else
      @errors = @auditorium.errors.full_messages
      render 'new'
    end
  end

  def update
    @auditorium = Auditorium.find(params[:id])
    if @auditorium.update(auditorium_params)
      redirect_to @auditorium
    else
      @errors = @auditorium.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @auditorium = Auditorium.find(params[:id])
    @auditorium.destroy

    redirect_to auditorium_path
  end

  private

  def auditorium_params
    params.require(:auditorium).permit(:name, :capacity)
  end

end