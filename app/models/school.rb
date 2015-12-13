class School < ActiveRecord::Base

  validates :name, :address1, :city, :postcode, :teacher_id, presence: true

  has_and_belongs_to_many :teachers, join_table: "schools_teachers"
  belongs_to :teacher

end
