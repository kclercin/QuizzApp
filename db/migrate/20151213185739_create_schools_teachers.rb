class CreateSchoolsTeachers < ActiveRecord::Migration
  def change
    create_table :schools_teachers do |t|
      t.belongs_to :school, index: true
      t.belongs_to :teacher, index: true
    end
  end
end
