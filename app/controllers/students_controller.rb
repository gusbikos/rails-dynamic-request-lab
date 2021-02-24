class StudentsController < ApplicationController
  before_action :set_student, only: :show
  def index
    @students = Student.all
    render "students/index"
  end

  def set_student
    @student = Student.find(params[:id])
  end
end