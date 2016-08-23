class TribesController < ApplicationController
  def index
    @tribes = Tribe.order(:name).all
  end

  def create
    @tribe = Tribe.new(tribe_params)

    if @tribe.save
      redirect_to tribes_path
    else
      render :new
    end
  end

  def new
    @tribe = Tribe.new
  end

  def edit
    @tribe = Tribe.find(params[:id])
  end

  def show
  end

  def update
    @tribe = Tribe.find(params[:id])
    if @tribe.update(tribe_params)
      redirect_to tribes_path
    else
      render 'edit'
    end
  end

  def destroy
    @tribe = Tribe.find(params[:id])
    @tribe.destroy

    redirect_to tribes_path
  end

  private

  def tribe_params
    params.require(:tribe).permit(:name)
  end
end
