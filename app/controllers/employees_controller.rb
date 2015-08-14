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

end
