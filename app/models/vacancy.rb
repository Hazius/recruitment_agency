class Vacancy < ActiveRecord::Base
  has_and_belongs_to_many :skills
  accepts_nested_attributes_for :skills, reject_if: :all_blank, allow_destroy: true

  scope :active, ->(){ where 'date_of_expiry >= ?', Date.today }

  def correspond_for? employee_id
    result = true
    employee = Employee.find employee_id
    # check count skills:
    if  self.skills.count != employee.skills.count
      result = false
    # check identical skills:
    elsif !(self.skills.identical? employee.skills)
      result = false
    end
    result
  end

  def self.for employee_id
    ids = []
    self.active.each do |vacancy|
      ids << vacancy.id if vacancy.correspond_for? employee_id
    end
    where id: ids
  end

end
