class TeachersController < ApplicationController
  layout "sessions"

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new teacher_params
    if @teacher.save
      redirect_to dashboard_url
    else
      render :new
    end
  end

private

  def teacher_params
    params.require(:teacher).permit(:login, :email, :password, :password_confirmation)
  end

end
