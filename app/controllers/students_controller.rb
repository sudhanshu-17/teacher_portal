class StudentsController < ApplicationController
  before_action :authenticate_teacher!
  before_action :set_student, only: %i[show edit update destroy]
  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new

    respond_to do |format|
      format.html { render partial: 'form', layout: false }
      format.json { render json: @student }
    end
  end


  def edit
  end


  def create
    student_name = student_params[:name]
    student_subject = student_params[:subject]
    existing_student = Student.find_by(name: student_name, subject: student_subject)

    if existing_student
      existing_student.marks = student_params[:marks].to_i
      save_and_respond(existing_student, 'Marks updated successfully.')
    else
      @student = Student.new(student_params)
      save_and_respond(@student, 'Student was successfully created.')
    end
  end



  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @student.destroy

    respond_to do |format|
      format.html { redirect_to students_path, status: :see_other, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def save_and_respond(resource, success_message)
    if resource.save
      respond_to do |format|
        format.html { redirect_to students_path, notice: success_message }
        format.json { render :show, status: resource.persisted? ? :ok : :created, location: resource }
        format.js
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.json { render json: resource.errors, status: :unprocessable_entity }
        format.js { render :new }
      end
    end
  end

  def student_params
    params.require(:student).permit(:name, :subject, :marks)
  end
end
