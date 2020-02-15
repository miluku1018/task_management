class ApplicationController < ActionController::Base
  private
    def record_not_found
      render file: "#{Rails.root}/public/404.html",
             layout: false,
             status: 404
    end
end
