class HandicapsController < ApplicationController
  def index
    @handicaps = Handicap.order(:name).all
  end

  def create
    @handicap = Handicap.new(handicap_params)

    if @handicap.save
      redirect_to handicaps_path
    else
      render :new
    end
  end

  def new
    @handicap = Handicap.new
  end

  def edit
    @handicap = Handicap.find(params[:id])
  end

  def show
  end

  def update
    @handicap = Handicap.find(params[:id])
    if @handicap.update(handicap_params)
      redirect_to handicaps_path
    else
      render 'edit'
    end
  end

  def destroy
    @handicap = Handicap.find(params[:id])

    if not @handicap.destroy
      flash[:error] = t "handicap_not_removed"
    end

    redirect_to handicaps_path
  end

  private

  def handicap_params
    params.require(:handicap).permit(:name)
  end
end
