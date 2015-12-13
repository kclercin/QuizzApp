class TeachersApplicationController < ApplicationController
  layout "teachers"

  before_action :require_teacher
  before_filter :check_teacher_has_at_least_one_school
  
  def require_teacher
    return false unless current_user && current_user.is_a?(Teacher)
  end

  def check_teacher_has_at_least_one_school
    return redirect_to new_teacher_school_path  unless current_user && current_user.schools.any?
  end
end
