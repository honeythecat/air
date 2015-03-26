class RentalsController < ApplicationController

  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @rentals = Rental.all
  end

  def show
    @rental = Rental.find(params[:id])
  end

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    if @rental.save
      flash[:notice]="Rental successfully Created!"
      redirect_to rentals_path
    else
      render :new
    end
  end

  def edit
    @rental = Rental.find(params[:id])
  end

  def update
    @rental = Rental.find(params[:id])
    if @rental.update(rental_params)
      flash[:notice] = "Rental updated!"
      redirect_to rentals_path(@rental)
    else
      render :edit
    end
  end

private
def rental_params
  params.require(:rental).permit(:location, :price)
end

end
