class Employee < ActiveRecord::Base
  has_and_belongs_to_many :skills
  accepts_nested_attributes_for :skills, reject_if: :all_blank, allow_destroy: true
  enum status: [ :looking_for, :found ]

  validates :name,
    format: { with: /\A[а-яА-Я]+\s[а-яА-Я]+\s[а-яА-Я]+\z/,
    message: "Only 3 cyrillic worlds" }

  validates :contact_info,
    format: { with: /\A\d{3}-\d{3}-\d{4}\z|\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
    message: "Only email or phone(format: 777-777-7777)" }

  def correspond_for? vacancy_id
    result = true
    vacancy = Vacancy.find vacancy_id
    # check count skills:
    if  self.skills.count != vacancy.skills.count
      result = false
    # check identical skills:
    elsif !(self.skills.identical? vacancy.skills)
      result = false
    end
    result
  end

  def self.for vacancy_id
    ids = []
    self.looking_for.each do |employee|
      ids << employee.id if employee.correspond_for? vacancy_id
    end
    where id: ids
  end

end
