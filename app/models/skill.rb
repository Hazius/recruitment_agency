class Skill < ActiveRecord::Base
  has_and_belongs_to_many :vacancies
  has_and_belongs_to_many :employees

  validates :title, uniqueness: { case_sensitive: false }

  def self.identical? skills
    result = true
    all.each{ |skill| result = false unless skills.include?(skill) }
    result
  end

end
