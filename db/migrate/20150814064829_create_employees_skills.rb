class CreateEmployeesSkills < ActiveRecord::Migration
  def change
    create_table :employees_skills do |t|
      t.belongs_to :employee, index: true
      t.belongs_to :skill, index: true
    end
  end
end
