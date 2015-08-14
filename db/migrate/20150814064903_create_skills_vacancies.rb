class CreateSkillsVacancies < ActiveRecord::Migration
  def change
    create_table :skills_vacancies do |t|
      t.belongs_to :vacancy, index: true
      t.belongs_to :skill, index: true
    end
  end
end
