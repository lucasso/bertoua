class AdultsController < ApplicationController
  def index
    @adults = Adult.order(:surname).all
  end

  def create
    @adult = Adult.new(adult_params)

    if @adult.save
      redirect_to adults_path
    else
      render :new
    end
  end

  def new
    @adult = Adult.new
  end

  def edit
    @adult = Adult.find(params[:id])
  end

  def show
    @adult = Adult.find(params[:id])
  end

  def update
    @adult = Adult.find(params[:id])
    if @adult.update(adult_params)
      redirect_to adult_path(@adult)
    else
      render 'edit'
    end
  end

  def destroy
    @adult = Adult.find(params[:id])
    @adult.destroy

    redirect_to adults_path
  end

  private

  def adult_params
    params.require(:adult).permit(:surname, :forename, :occupation, :address, :phone, :email, :notes)
  end
end
