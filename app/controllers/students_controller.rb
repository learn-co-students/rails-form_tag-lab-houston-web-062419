class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new(params[:student])
  end

  def create
    @student = Student.create(params[:student])
    redirect_to @student
  

  
end
