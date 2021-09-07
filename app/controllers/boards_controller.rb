# frozen_string_literal: true

# No puedo creer que escribi gato
class BoardsController < ApplicationController
  def index 
  end

  def profile
    redirect_to(boards_path) unless current_user.present?
  end

  def admin_panel
    redirect_to(boards_path) unless current_user.present? && base_admin_role?
  end

  def enterprise_panel
    redirect_to(boards_path) unless current_user.present? && enterprise_role?
  end

  private
end
