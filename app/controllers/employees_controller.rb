class EmployeesController < ApplicationController

  include MethodsForAdmin

  before_action :set_resource, only: [:show, :edit, :update, :destroy]
  def resource_name
    'Employee'
  end
  def permit_params
    [
      :name,
      :contact_info,
      :status,
      :salary,
      skill_ids: [],
      skills_attributes: [:id, :title, :_destroy],
    ]
  end

  def index
    @resources = resource_class.includes(:skills).all
  end

  def for_vacancy
    @vacancy = Vacancy.find_by id: params[:vacancy_id]
    @resources = Employee.for(@vacancy.id).order(:salary) if @vacancy.present?
  end

end
