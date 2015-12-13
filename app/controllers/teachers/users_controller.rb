class Teachers::UsersController < TeachersApplicationController
  skip_before_action :check_teacher_has_at_least_one_school

  def index
  end
end
