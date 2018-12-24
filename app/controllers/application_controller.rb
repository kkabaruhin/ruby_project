class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def access_denied(exception)
    render file: Rails.root.join('public', '403.html'),
           status: 403,
           layout: false
  end
end
