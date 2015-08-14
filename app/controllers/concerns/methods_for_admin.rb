module MethodsForAdmin

  def resource_class
    resource_name.constantize
  end

  def index
    @resources = resource_class.all
  end

  def show
    render :edit
  end

  def new
    @resource = resource_class.new
    render :edit
  end

  def edit
  end

  def create
    @resource = resource_class.new(resource_params)
    if @resource.save
      redirect_to action: :index
    else
      render :edit
    end
  end

  def update
    if @resource.update(resource_params)
      redirect_to action: :index
    else
      render :edit
    end
  end

  def destroy
    @resource.destroy
    redirect_to action: :index
  end

  private

    def set_resource
      @resource = resource_class.find(params[:id])
    end
    def resource_params
      params.require(resource_name.underscore.to_sym).permit(permit_params)
    end

end