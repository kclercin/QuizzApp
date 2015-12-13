class TeacherRouteConstraint
  def matches?(request)
    user = Teacher.find_by_persistence_token(request.cookie_jar['user_credentials'].split(':')[0])
    user.present? && user.is_a?(Teacher)
  end
end
