class ApplicationController < ActionController::Base

  def base_admin_role?
    return false if current_user.blank?

    current_user.dev? ||
      current_user.admin? ||
      current_user.manager?
  end

  def enterprise_role?
    return false if current_user.blank?

    current_user.dev? ||
      current_user.enterprise? ||
      current_user.enterprise_manager? ||
      current_user.enterprise_seeker?
  end

  private

  def default_url_options(options = {})
    return {locale: I18n.locale}.merge(options) if I18n.default_locale != I18n.locale
    
    {locale: nil}.merge(options)
  end
end
