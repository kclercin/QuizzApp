class Teachers::SchoolsController < TeachersApplicationController
  
  skip_before_action :check_teacher_has_at_least_one_school
  load_and_authorize_resources

  def new
    @school = School.new
  end

  def create
    @school = School.new schools_params
    @school.teacher = current_user
    if @school.save
      @school.teachers << current_user
      redirect_to dashboard_url
    else
      render :new
    end
  end

private
  def schools_params
    params.require(:school).permit(:name, :address1, :address2, :city, :postcode)
  end
end
