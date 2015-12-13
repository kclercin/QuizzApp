class Teacher < User

  has_and_belongs_to_many :schools, join_table: "schools_teachers"

  validates :login, :email, presence: true

  def admin_of_schools
    School.where(teacher_id: self.id).pluck(:id)
  end

end
