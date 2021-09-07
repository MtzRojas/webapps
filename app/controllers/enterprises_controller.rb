# frozen_string_literal: true

# Documment
class EnterprisesController < ApplicationController
  def new
    @enterprise = Enterprise.new
  end

  def create
    enterprise = Enterprise.create(enterprise_params)
    redirect_to enterprise_path(enterprise.id)
  end

  def index
  end

  def show
    @enterprise = Enterprise.find(enterprise_id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def enterprise_params
    params.require(:enterprise).permit(:name, :address, :legal_representative, :phone_number, :level)
  end

  def enterprise_id
    params.permit(:id).to_h[:id]
  end
end
