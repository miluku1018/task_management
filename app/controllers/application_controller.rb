class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  before_action :set_locale

  private
    def record_not_found
      render file: "#{Rails.root}/public/404.html",
             layout: false,
             status: 404
    end

    def set_locale
      I18n.locale = params[:locale] || I18n.default_locale
    end
end
