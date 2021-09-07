# frozen_string_literal: true

# Services Document
class ServicesController < ApplicationController
  def new
    @service = Service.new
  end

  def create
    service = Service.create(service_params)
    redirect_to service_path(service.id)
  end

  def index
    @services = Service.all
  end

  def show
    @service = Service.find(service_id)
  end

  private

  def service_params
    params.require(:service).permit(:name, :price, :description)
  end

  def service_id
    params.permit(:id).to_h[:id]
  end
end
