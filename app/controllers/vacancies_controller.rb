class VacanciesController < ApplicationController

  include MethodsForAdmin

  before_action :set_resource, only: [:show, :edit, :update, :destroy]
  def resource_name
    'Vacancy'
  end
  def permit_params
    [
      :title,
      :date_of_submit,
      :date_of_expiry,
      :salary,
      :contact_info,
      skill_ids: [],
      skills_attributes: [:id, :title, :_destroy],
    ]
  end

  def for_employee
    @employee = Employee.find_by id: params[:employee_id]
    @resources = Vacancy.for(@employee.id).order('salary DESC') if @employee.present?
  end

end
