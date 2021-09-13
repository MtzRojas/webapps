# frozen_string_literal: true

# Services Document
class ServicesController < ApplicationController
  def new
    @service = Service.new
  end

  def create
    service = Service.create(service_params)
    redirect_to(service_path(service.id))
  end

  def index
    @services = Service.all
  end

  def show
    @service = Service.find(service_id)
  end

  def edit
    @service = Service.find(service_id)
  end

  def update
    @service = Service.find(service_id)
    @service.update(service_params)
    redirect_to(service_path(service_id))
  end

  def destroy
    @service = Service.find(service_id)
    @service.destroy!
    redirect_to(services_path)
  end

  private

  def service_params
    params.require(:service).permit(:name, :price, :description)
  end

  def service_id
    params.permit(:id).to_h[:id]
  end
end
