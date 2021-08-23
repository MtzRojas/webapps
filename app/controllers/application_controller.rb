class ApplicationController < ActionController::Base

  private

  def default_url_options(options = {})
    return {locale: I18n.locale}.merge(options) if I18n.default_locale != I18n.locale
    
    {locale: nil}.merge(options)
  end
end
