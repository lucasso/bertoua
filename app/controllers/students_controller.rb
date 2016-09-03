class StudentsController < ApplicationController
  def index
    @students = Student.order(:surname).all
  end

  def create

    @student = Student.new(student_params)
 
    if @student.save
      redirect_to @student
    else
      render :new
    end

    #render plain: params[:student].inspect
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def show
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to student_path(@student)
    else
      render 'edit'
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    redirect_to students_path
  end

  private

  def student_params
    params.require(:student).permit(
        :forename, :surname, :birth_date, :birth_place, :birth_act_number, :address, :student_id, :confession_id,
        :tribe_id, :sex, student_handicaps_attributes: [:_destroy, :handicap_id, :id])
  end

end
