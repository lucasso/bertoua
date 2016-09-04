class ConfessionsController < ApplicationController
  def index
    @confessions = Confession.order(:name).all
  end

  def create
    @confession = Confession.new(confession_params)

    if @confession.save
      redirect_to confessions_path
    else
      render :new
    end
  end

  def new
    @confession = Confession.new
  end

  def edit
    @confession = Confession.find(params[:id])
  end

  def show
  end

  def update
    @confession = Confession.find(params[:id])
    if @confession.update(confession_params)
      redirect_to confessions_path
    else
      render 'edit'
    end
  end

  def destroy
    @confession = Confession.find(params[:id])
    if not @confession.destroy
      flash[:error] = t "confession_not_removed"
    end

    redirect_to confessions_path
  end

  private

  def confession_params
    params.require(:confession).permit(:name)
  end

end
