class DashboardsController < ApplicationController
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
  
  