module ApplicationHelper
  def supported_ie?
    browser.ie? && browser.msie_version.to_i < 11
  end

  def login_views?
    controller_name == 'sessions' ||
      controller_name == 'passwords' ||
      controller_name == 'registrations'
  end

  def navbar_params
    {
    #   username: current_user_nickname,
    #   root_path: dashboards_path,
    #   ":url_options": current_user_options,
    #   sign_out_url: destroy_user_session_path,
    #   avatar_img: avatar_img
    }
  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
